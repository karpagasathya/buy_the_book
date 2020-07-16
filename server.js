"use strict";

const express = require("express");
const exphbs = require("express-handlebars");

// Requiring our models for syncing
const db = require("./models");

const PORT = process.env.PORT || 8080;

const app = express();

// Serve static content for the app from the "public" directory in the application directory.
app.use(express.static("public"));

// Parse application body
app.use(express.urlencoded({ extended: true }));
app.use(express.json());

app.engine("handlebars", exphbs({ defaultLayout: "main" }));
app.set("view engine", "handlebars");

require("./routes/cart-api-routes")(app);

console.log("going to html route");
app.use("/", require("./routes/html-routes"));
app.use("/cart", require("./routes/html-routes"));

db.sequelize.sync().then(function () {
  app.listen(PORT, function () {
    console.log("App listening on PORT " + PORT);
  });
});
