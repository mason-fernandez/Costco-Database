-- This file will containt all of the tables for our database
DROP DATABASE costco;
CREATE DATABASE costco;
USE costco;

CREATE TABLE warehouse (
	warehouse_id INT PRIMARY KEY,
	address VARCHAR(50) NOT NULL,
   	phone VARCHAR(15)
);
 
CREATE TABLE members (
	member_id INT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    address VARCHAR(50) NOT NULL, 
    phone VARCHAR(15),
    warehouse_id INT,
    FOREIGN KEY (warehouse_id) REFERENCES warehouse(warehouse_id)
);

CREATE TABLE department (
	dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL,
    phone_ext VARCHAR(3),   
    warehouse_id INT NOT NULL, 
    FOREIGN KEY (warehouse_id) REFERENCES warehouse(warehouse_id) 
);

CREATE TABLE employee (
	employee_id INT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    job_title VARCHAR(50),
	wage DECIMAL(9,2),
    phone VARCHAR(15),
    address VARCHAR(50),
    dept_id INT NOT NULL,
    FOREIGN KEY (dept_id) REFERENCES department(dept_id)
); 

CREATE TABLE items (
	item_id INT PRIMARY KEY,
    item_name VARCHAR(50) NOT NULL,
    price DECIMAL(9,2) NOT NULL,
    item_desc TEXT,
    quantity INT NOT NULL,
    dept_id INT NOT NULL,
    FOREIGN KEY (dept_id) REFERENCES department(dept_id)
);

CREATE TABLE orders (
	order_id INT PRIMARY KEY,
    order_date DATE NOT NULL,
    total DECIMAL(9,2) NOT NULL,
    member_id INT NOT NULL,
    FOREIGN KEY (member_id) REFERENCES members(member_id)
); 

CREATE TABLE ordered_items (
	order_id INT NOT NULL,
    item_id INT NOT NULL,
    quantity INT NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (item_id) REFERENCES items(item_id)
);

CREATE TABLE shipment (
	shipment_id INT PRIMARY KEY,
    courrier VARCHAR(50) NOT NULL,
    receive_date DATE NOT NULL,
    warehouse_id INT NOT NULL,
    FOREIGN KEY (warehouse_id) REFERENCES warehouse(warehouse_id)
); 

CREATE TABLE shipped_items (
	shipment_id INT NOT NULL,
    item_id INT NOT NULL,
    quantity INT NOT NULL,
    FOREIGN KEY (shipment_id) REFERENCES shipment(shipment_id),
    FOREIGN KEY (item_id) REFERENCES items(item_id)
);


 