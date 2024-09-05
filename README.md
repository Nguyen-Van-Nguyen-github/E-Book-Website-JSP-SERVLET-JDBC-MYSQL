# E-Book-Website-JSP-SERVLET-JDBC-MYSQL
This is a website project written in Java using JSP, Servlet, JDBC, and MySQL, with Bootstrap for the interface. These are the basic steps for website development for those who want to use Java to build web applications.
---
# Demo Project
[Link Youtube]().
---
# Technology used
  + Operating System (OS): Window 11.
  + Programming Language: Java(JDK) 22.
  + Apache Maven 3.9.8.
  + TomCat9: 9.0.93.
  + Bootstrap4
  + MySQL: MySQL Server 9.0.
---
# Important
 + View the dependencies in the pom.xml file.
 + View file EBook-App/src/main/java/com/DB/DBConnect.java -> use username and password your.
---
# Database
 + CREATE DATABASE in Mysql with name: ebook-app.
 + CREATE TABLE books (
    bookId INT AUTO_INCREMENT PRIMARY KEY,
    bookname VARCHAR(45),
    author VARCHAR(45),
    price VARCHAR(45),
    bookCategory VARCHAR(45),
    status VARCHAR(45),
    photo VARCHAR(45),
    email VARCHAR(45)
);

+ CREATE TABLE orders (
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_id VARCHAR(45),
    user_name VARCHAR(45),
    email VARCHAR(45),
    address VARCHAR(500),
    phno VARCHAR(45),
    book_name VARCHAR(45),
    author VARCHAR(45),
    price VARCHAR(45),
    payment VARCHAR(45)
);

+ CREATE TABLE cart (
    cid INT AUTO_INCREMENT PRIMARY KEY,
    bid INT,
    uid INT,
    bookName VARCHAR(45),
    author VARCHAR(45),
    price DOUBLE,
    total_price DOUBLE
);

+ CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(45),
    email VARCHAR(45),
    phno VARCHAR(45),
    password VARCHAR(45),
    address VARCHAR(45),
    landmark VARCHAR(45),
    city VARCHAR(45),
    state VARCHAR(45),
    pincode VARCHAR(45)
);

