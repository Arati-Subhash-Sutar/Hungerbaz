--Hungerbaz Data Base Creation

CREATE DATABASE hungerbaz; 
USE hungerbaz;


--Users Table

CREATE TABLE users ( 
    id INT(11) PRIMARY KEY AUTO_INCREMENT, 
    fullname VARCHAR(100) NOT NULL, 
    email VARCHAR(100) NOT NULL UNIQUE, 
    username VARCHAR(50) NOT NULL UNIQUE, 
    password VARCHAR(255) NOT NULL 
);


--Order Detail Table 

CREATE TABLE orders ( 
    id INT AUTO_INCREMENT PRIMARY KEY, 
    order_type VARCHAR(50) NOT NULL, 
    customer_name VARCHAR(100) NOT NULL, 
    delivery_address TEXT NOT NULL, 
    phone_number VARCHAR(20) NOT NULL, 
    order_items TEXT NOT NULL, 
    total_amount DECIMAL(10,2) NOT NULL, 
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP 
);


--Feedback Table

CREATE TABLE feedback ( 
    id INT AUTO_INCREMENT PRIMARY KEY, 
    name VARCHAR(100) NOT NULL, 
    email VARCHAR(100) NOT NULL, 
    rating INT NOT NULL, 
    message TEXT NOT NULL, 
    submission_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP 
);


--Contact Table

CREATE TABLE IF NOT EXISTS contacts ( 
    id INT AUTO_INCREMENT PRIMARY KEY, 
    name VARCHAR(100) NOT NULL, 
    email VARCHAR(100) NOT NULL, 
    message TEXT NOT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP 
);