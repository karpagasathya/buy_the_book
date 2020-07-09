let express = require("express");
let router = express.Router();

const db = require("../models");





router.get("/", (req, res) =>
  db.books
    .findAll()
    .then((books) => {
      console.log(books);
      res.render("index", {
        index: books,
      });
    })
    .catch((err) => console.log(err))
);


// router.get('/', (req, res) => {
//     db.books.findAll({})
//         .then(data => {
//         res.json(data)
//     })
// })

module.exports = router;
