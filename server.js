let express = require("express");
let exphbs = require("express-handlebars");

// Requiring our models for syncing
let db = require("./models");

let PORT = process.env.PORT || 8080;

let app = express();

// Serve static content for the app from the "public" directory in the application directory.
app.use(express.static("public"));

// Parse application body
app.use(express.urlencoded({ extended: true }));
app.use(express.json());

app.engine("handlebars", exphbs({ defaultLayout: "main" }));
app.set("view engine", "handlebars");


// require("./routes/api-routes.js")(app);

console.log("going to html route");
app.use("/", require("./routes/html-routes"));



db.sequelize.sync({ force: true }).then(function () {
  app.listen(PORT, function () {
    console.log("App listening on PORT " + PORT);
  });
});
