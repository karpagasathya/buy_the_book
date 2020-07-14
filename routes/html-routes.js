let express = require("express");
let router = express.Router();
let accounting= require("accounting");
let lodash= require("lodash");


const db = require("../models");

//index route
router.get("/", (req, res) => {
  // fetching random 9 books to display in index page
  const allBooks = db.Book.findAll({
    limit: 9,
    include: [db.Author]
  });
  const distinctCategory = db.Book.aggregate("genre", "DISTINCT", { plain: false });

  const cartCount = db.Cart.count();

  Promise.all([allBooks, distinctCategory, cartCount])
    .then((responses) => {
      res.render("index", {
        books: responses[0],
        categories: responses[1],
        cartCount: responses[2],
      });
    })
    .catch((err) => console.log(err));
});


//category route
router.post("/category/:categoryName", (req, res) => {
  const booksByCategory = db.Book.findAll({
    where: {
      genre: req.body.genre,
    },
    include: [db.Author],
  });

  const distinctCategory = db.Book.aggregate("genre", "DISTINCT", { plain: false });

  const cartCount = db.Cart.count();

  Promise.all([booksByCategory, distinctCategory, cartCount])
    .then((responses) => {
      res.render("category", {
        books: responses[0],
        categories: responses[1],
        cartCount: responses[2],
      });
    })
    .catch((err) => console.log(err));
});

//cart route
router.get("/cart", (req, res) => {
  const cartItems = db.Cart.findAll({
    include: [
      {
        model: db.Book,
        through: {
          model: db.CartBook,
        },
      },
    ],
  });

  Promise.all([cartItems])
    .then((responses) => {
      const cart = lodash.map(responses[0], (response) => {
        const dataValues = response.dataValues;
        dataValues.price = accounting.formatMoney(dataValues.price);
        return response;
      });
      console.log(cart);
      res.render("cart", {
        cart: cart
      });
    })
    .catch((err) => console.log(err));
});

(module.exports = router);
