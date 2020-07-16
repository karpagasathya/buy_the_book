# Buy the Book! - Online Bookstore
>
> Books are the treasured wealth of the world.
> -- Henry David Thoreau
>

## Table of Contents

* [Description](#description)
* [Take a Look](#take-a-look)
* [Deployment](#deployment)
* [Technologies Used](#technologies-used)
* [Contributors](#contributors)


## Description
Our team considered the challenges that Coronavirus has presented and the new normal many of us are facing -- spending more time at home, more 'free time' on our hands, a wealth of entertainment options to pass that time.

What better way to pass this time, than by diving into a Book? As Nora Ephron says:
>Reading is escape, and the opposite of escape; it’s a way to make contact with reality after a day of making things up, and it’s a way of making contact with someone else’s imagination after a day that’s all too real.


**Buy the Book! is an online Bookstore for anyone to find their next great read.**
**Select a book from one or more of our curated categories and see how reading can change your life.**


## Take a Look

:books: [Buy the Book!](https://buy-the-book.herokuapp.com/)

![Home Page](./public/assets/img/Buy_the_Book.gif)

### How to use Buy the Book
* At first, you'll be presented with a selection of our curated collection
* Select a Book to see the Description and Availability
* Click &#9776;   to view and choose from our categories
* Add a Book to Cart -- feel free to pick more than one!
* Check out what's in your Cart :shopping_cart:, and Checkout to complete your order
* Click :house: or **Buy the Book!** to get back home


## Deployment

#### Locally
_Note: This application requires a local MySQL Database_

To install and use locally,

1. `git clone` the repository to a local directory
2. In the terminal, `cd` to the repository directory and run

```bash
npm i
```

3. In your local SQL Instance, run the `Schema.sql`, `author_seed.sql`, and `books_seed.sql` queries to populate the data

4. Then start the application with:

```bash
node server.js
```

5. You can then navigate to [http://localhost:8080/](http://localhost:8080/) in your browser of choice

#### Online
All that being said, you can find the deployed application on Heroku. [Buy the Book](https://buy-the-book.herokuapp.com/) online and save yourself some time and effort!



## Technologies Used
This application is built with Materialize CSS Framework and Handlebars for the front end.

The back end uses Node.js and Express.js, backed by a MySQL database with a Sequelize ORM.

* [Materialize](https://materializecss.com/) - CSS Framework
* [Handlebars](https://handlebarsjs.com/) - Handlebars is a simple templating language
* [Node.js](https://nodejs.org/en/) - JavaScript runtime
* [Express.js](https://expressjs.com/) - Lightweight web application framework for Node.js
* [mysql2](https://github.com/mysqljs/mysql) - MySQL client for Node.js with focus on performance
* [Sequelize](https://sequelize.org/) - Promise-based ORM (Object Relational Mapping) for Node.js

Additional Technologies used are:

* [lodash](https://lodash.com/) - JavaScript Library that provides utility functions -- used for Object Mapping in this app
* [accounting](http://openexchangerates.github.io/accounting.js/) - JavaScript Library providing simple and advanced number, money and currency formatting



## Contributors
`Team Weezer`
- [Anitha Venkatesan](https://github.com/Anitha-Venkatesan)
- [Jacob Kyle](https://github.com/jkthomps21)
- [Pangsua Vang](https://github.com/pangsua26)
- [Sathya Guru](https://github.com/karpagasathya)
- [Tom Johnson](https://github.com/JOH07995)
