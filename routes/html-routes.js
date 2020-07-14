let express = require("express");
let router = express.Router();
var Sequelize = require("sequelize");
let accounting= require("accounting");
var lodash= require("lodash");


const db = require("../models");

router.get("/", (req, res) => {
  // fetching random 9 books to display in index page
  const allBooks = db.Book.findAll({
    limit: 9,
    order: Sequelize.literal("rand()"),
    include: [db.Author]
  });
  const distinctCategory = db.Book.aggregate("genre", "DISTINCT", { plain: false });
  Promise.all([allBooks, distinctCategory])
    .then((responses) => {
      res.render("index", {
        books: responses[0],
        categories: responses[1],
      });
    })
    .catch((err) => console.log(err));
});

router.post("/category/:categoryName", (req, res) => {
  const booksByCategory = db.Book.findAll({
    where: {
      genre: req.body.genre,
    },
    include: [db.Author],
  });

  const distinctCategory = db.Book.aggregate("genre", "DISTINCT", { plain: false });

  Promise.all([booksByCategory, distinctCategory])
    .then((responses) => {
      res.render("category", {
        books: responses[0],
        categories: responses[1],
      });
    })
    .catch((err) => console.log(err));
});

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
