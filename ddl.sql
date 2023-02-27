SELECT *
FROM salesperson

SELECT *
FROM mechanics

SELECT *
FROM employees

SELECT *
FROM service_ticket

SELECT *
FROM invoices

SELECT *
FROM customers

SELECT *
FROM new_cars

SELECT *
FROM used_cars

SELECT *
FROM inventory

-- Creating the tables


CREATE TABLE salesperson(
    salesperson_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    employee_id INT
);

CREATE TABLE employees(
    employees_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50)
);

CREATE TABLE customers(
    customers_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    cust_address VARCHAR(150),
    phone_number VARCHAR(20)
);

CREATE TABLE new_cars(
    new_cars_id SERIAL PRIMARY KEY,
    make VARCHAR(50),
    model VARCHAR(50),
    year INT,
    price_range VARCHAR(30)
);

CREATE TABLE used_cars(
    used_cars_id SERIAL PRIMARY KEY,
    make VARCHAR(50),
    model VARCHAR(50),
    year INT,
    price_range VARCHAR(30),
    mileage INT
);

CREATE TABLE inventory(
    inventory_id SERIAL PRIMARY KEY,
    new_cars_id INT,
    FOREIGN KEY (new_cars_id) REFERENCES new_cars(new_cars_id),
    used_cars_id INT,
    FOREIGN KEY (used_cars_id) REFERENCES used_cars(used_cars_id),
    price_range VARCHAR(30)
);

CREATE TABLE mechanics(
    mechanics_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    employees_id INT,
    FOREIGN KEY (employees_id) REFERENCES employees(employees_id)
);

CREATE TABLE service_ticket(
    service_ticket_id SERIAL PRIMARY KEY,
    mechanics_id INT,
    FOREIGN KEY (mechanics_id) REFERENCES mechanics(mechanics_id),
    customers_id INT,
    FOREIGN KEY (customers_id) REFERENCES customers(customers_id)
);

CREATE TABLE invoices(
    invoices_id SERIAL PRIMARY KEY,
    customers_id INT,
    FOREIGN KEY (customers_id) REFERENCES customers(customers_id),
    salesperson_id INT,
    FOREIGN KEY (salesperson_id) REFERENCES salesperson(salesperson_id),
    amount INT,
    inventory_id INT,
    FOREIGN KEY (inventory_id) REFERENCES inventory(inventory_id)
);

-- Adding FK employees_id to the salesperson entity

ALTER TABLE salesperson
ADD employees_id INT,
ADD FOREIGN KEY (employees_id) REFERENCES employees(employees_id);

ALTER TABLE salesperson
DROP COLUMN employee_id;

ALTER TABLE service_ticket
ADD service VARCHAR(150),
ADD amount INT;

ALTER TABLE service_ticket
ADD service_name VARCHAR(150),
DROP COLUMN service;

ALTER TABLE invoices
ADD car_name VARCHAR(150);

ALTER TABLE inventory
ADD car_name VARCHAR(150);