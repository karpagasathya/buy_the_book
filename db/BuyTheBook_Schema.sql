-- Drops the bookstore_db if it already exists --
DROP DATABASE IF EXISTS bookstore_db;

-- Create the database bookstore_db and specified it for use.
CREATE DATABASE bookstore_db;

USE bookstore_db;


-- Create the table author.
CREATE TABLE author(
    authorID INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL
);

-- Create the table books.
CREATE TABLE books(
    bookID INT AUTO_INCREMENT PRIMARY KEY,
    title varchar(255) NOT NULL,
    genre VARCHAR(255) NOT NULL,
    pubYear INT NOT NULL,
    price DECIMAL(13,2) NOT NULL,
    inventory INT NOT NULL DEFAULT 0,
    bookDescription TEXT,
	authorID int,
    CONSTRAINT fk_author
    FOREIGN KEY (authorID) REFERENCES author (authorID)
);

-- Create the table customer.
CREATE TABLE customer(
	customerID INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL,
    pwd VARCHAR(100) NOT NULL,
    -- do we need to store as a hash?
    -- might change based on how we use 0auth
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL
);


-- Create the table orders.
-- changed from table name checkout
CREATE TABLE orders(
    orderID INT AUTO_INCREMENT PRIMARY KEY,
    subtotal DECIMAL(13,2) NOT NULL,
    shipping DECIMAL(13,2) NOT NULL DEFAULT 0,
    total_price DECIMAL(13,2) NOT NULL,
    customerID INT,
    CONSTRAINT fk_customer
	FOREIGN KEY (customerID) REFERENCES customer(customerID),
	street_number VARCHAR(50) NOT NULL,
    street_name VARCHAR(50) NOT NULL,
	state VARCHAR(50) NOT NULL,
    postal_code INT NOT NULL,
    phone_number VARCHAR(20) NOT NULL
);


-- Create the table orderDetails.
-- changed from table name itemOrder
CREATE TABLE orderDetails(
	orderID INT,
    CONSTRAINT fk_orders
    FOREIGN KEY (orderID) REFERENCES orders (orderID),
    bookID INT,
    CONSTRAINT fk_book
	FOREIGN KEY (bookID) REFERENCES books(bookID),
	quantity INT NOT NULL,
    price DECIMAL(13,2) NOT NULL
);

