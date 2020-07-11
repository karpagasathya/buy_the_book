let express = require("express");
let router = express.Router();

const db = require("../models");

router.get("/", (req, res) => {
    const allBooks = db.Book.findAll();
    const distinctCategory = db.Book.aggregate("genre", "DISTINCT", { plain: false });
    
    Promise.all([allBooks, distinctCategory])
        .then((responses) => {
        res.render("index", {
          top9Books: responses[0],
          category: responses[1],
        });
      })
      .catch((err) => console.log(err));
});

(module.exports = router);
