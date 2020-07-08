-- Drops the bookstore_db if it already exists --
DROP DATABASE IF EXISTS bookstore_db;

-- Create the database bookstore_db and specified it for use.
CREATE DATABASE bookstore_db;

USE bookstore_db;

-- Create the table books.
CREATE TABLE books(
    bookID INT AUTO_INCREMENT PRIMARY KEY,
    FOREIGN KEY (authorID) REFERENCES author(authorID),
    title varchar(255) NOT NULL,
    genre VARCHAR(255) NOT NULL,
    pubYear INT NOT NULL,
    price DECIMAL(13,2) NOT NULL,
    inventory INT NOT NULL DEFAULT 0,
    bookDescription TEXT
);


-- Create the table author.
CREATE TABLE author(
    authorID INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    FOREIGN KEY (bookID) REFERENCES books(bookID)
);

-- Create the table itemOrder.
CREATE TABLE itemOrder(
    orderID INT AUTO_INCREMENT PRIMARY KEY,
    quantity INT NOT NULL,
    price DECIMAL(13,2) NOT NULL,
    FOREIGN KEY (bookID) REFERENCES books(bookID)
);

-- Create the table checkout.
CREATE TABLE checkout(
    checkoutID INT AUTO_INCREMENT PRIMARY KEY,
    quantity INT NOT NULL,
    price DECIMAL(13,2) NOT NULL,
    shipping DECIMAL(13,2) NOT NULL DEFAULT 0,
    FOREIGN KEY (orderID) REFERENCES itemOrder(orderID)
    ON DELETE CASCADE
);

-- Create the table customer.
CREATE TABLE customer(
	customerID INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    street_number VARCHAR(50) NOT NULL,
    street_name VARCHAR(50) NOT NULL,
    postal_code INT NOT NULL,
    province VARCHAR(50),
    country VARCHAR(50) NOT NULL,
    phone_number VARCHAR(20)
);