CREATE DATABASE bamazon_DB;

USE bamazon_DB;

CREATE TABLE products(
	item_id INT NOT NULL AUTO_INCREMENT,
	product_name VARCHAR(255) NULL,
	department_name VARCHAR(255) NULL,
	price DECIMAL(10,2) NULL,
	stock_quantity INT(7),
    PRIMARY KEY (item_id)
);