var db = require("../models");
console.log("Author api routes");
module.exports = function (app) {
    app.get("/api/authors", function (req, res) {
        //api route to get all the authors from the Author Table
        db.Author.findAll({}).then(function (dbAuthor) {
            res.json(dbAuthor);
            console.log(dbAuthor)
        });
    });
    app.get("/api/authors/:id", function (req, res) {
        // api route to get a specific author from the Author Table
        db.Author.findOne({
            where: {
                id: req.params.id
            }
        }).then(function (dbAuthor) {
            res.json(dbAuthor);
            console.log(dbAuthor)
        });
    });
};

