"use strict";

const express = require("express");
const router = express.Router();
const accounting= require("accounting");
const lodash= require("lodash");
const db = require("../models");


//index route
router.get("/", async (req, res) => {
  // fetching random 9 books to display in index page
  const allBooks = await db.Book.findAll({
    limit: 9,
    include: [db.Author]
  });
  const distinctCategory = await db.Book.aggregate("genre", "DISTINCT", { plain: false });

  const cartCount = await db.Cart.count();

  Promise.all([allBooks, distinctCategory, cartCount])
    .then((responses) => {
      lodash.map(responses[0], (response) => {
        const dataValues = response.dataValues;
        dataValues.price = accounting.formatMoney(dataValues.price);
        dataValues.modalhref = "#modal-book-" + dataValues.id;
        dataValues.modalId = "modal-book-" + dataValues.id;
        return response;
      });

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
      lodash.map(responses[0], (response) => {
        const dataValues = response.dataValues;
        dataValues.price = accounting.formatMoney(dataValues.price);
        dataValues.modalhref = "#modal-book-" + dataValues.id;
        dataValues.modalId = "modal-book-" + dataValues.id;
        return response;
      });

      res.render("category", {
        books: responses[0],
        categories: responses[1],
        cartCount: responses[2],
      });
    })
    .catch((err) => console.log(err));
});

//cart route
router.get("/cart", async (req, res) => {
  const cartItems = await db.Cart.findAll({
    include: [
      {
        model: db.Book,
        through: {
          model: db.CartBook,
        },
      },
    ],
  });

  const distinctCategory = await db.Book.aggregate("genre", "DISTINCT", { plain: false });

  const cartCount = await db.Cart.count();

  const totalPrice = await db.Cart.sum("price");

  Promise.all([cartItems, distinctCategory, cartCount, totalPrice])
    .then((responses) => {
      const cart = lodash.map(responses[0], (response) => {
        const dataValues = response.dataValues;
        dataValues.price = accounting.formatMoney(dataValues.price);
        return response;
      });
      res.render("cart", {
        cart: cart,
        categories: responses[1],
        cartCount: responses[2],
        subTotal: responses[3],
      });
    })
    .catch((err) => console.log(err));
});

(module.exports = router);