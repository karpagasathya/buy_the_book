let express = require("express");
let router = express.Router();

const db = require("../models");

// //find all books
// router.get("/", (req, res) =>
//   db.Book
//     .findAll()
//     .then((books) => {
//       console.log(books);
//       res.render("index", {
//        Book: books,
//       });
//     })
//     .catch((err) => console.log(err))
// );

router.get("/", (req, res) =>
    db.Book.findAll({
        attributes: ["genre"],
        group: ["genre"],
    }).then((books) => {
        let categories = books.map((book) => book.genre)
        console.log(categories);
        res.render("index", {
            category: categories
        })
    })
);

// router.get("/", (req, res) =>
//   db.Book.findAll({
//     attributes: ["genre"],
//     group: ["genre"],
//   }).then((books) => {
//     // let categories = books.map((book) => book.genre)
//     // console.log(categories);
//     res.render("index", {
//       Category: books.map((book) => book.genre),
//     });
//   })
// );



// //SHOW- Show info about one book
// router.get("/:id", (req, res)=> {
  
//   db.Book.findById(req.params.id)
//     .exec(function (err, foundBook) {
//       if (err) {
//         console.log(err);
//       } else {
//         res.render("books/show", { book: foundBook });
//       }
//     });
// });

module.exports = router;
