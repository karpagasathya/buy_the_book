"use strict";

const db = require("../models");
module.exports = function (app) {
  app.post("/api/cart", async function (req, res) {
    const book = await db.Book.findByPk(req.body.bookId);
    if (!book) {
    // TODO: respond error
    }

    const cart = await db.Cart.create({
      price: book.dataValues.price
    });

    cart.addBook(book);
    res.json({
      ...cart.dataValues,
      book: book
    });
  });

  app.get("/api/cart",async function (req, res) {
    const book = await db.Book.findByPk(req.body.bookId);
    console.log(book);
    const carts = await db.Cart.findAll({});
    res.json({
      cart:carts,
      book: book
    });
  });

  app.delete("/api/cart/delete", async () => {
    await db.Cart.destroy({ where: {}, truncate: false });
  });
};
