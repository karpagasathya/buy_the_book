let express = require("express");
let router = express.Router();
var Sequelize = require("sequelize");

const db = require("../models");

router.get("/", (req, res) => {
  // fetching random 9 books to display in index page
  const allBooks = db.Book.findAll({ limit: 9, order: Sequelize.literal("rand()") });
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
  // const distinctCategory = db.Book.aggregate("genre", "DISTINCT", { plain: false });

  Promise.all([cartItems])
    .then((responses) => {
      res.render("cart", {
        cart: responses[0],
      });
    })
    .catch((err) => console.log(err));
});

(module.exports = router);
