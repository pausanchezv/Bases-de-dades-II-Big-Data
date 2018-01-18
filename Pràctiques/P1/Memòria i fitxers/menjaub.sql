BEGIN;

DROP TABLE IF EXISTS tables;
CREATE TABLE tables (
	table_number SERIAL PRIMARY KEY,
	table_details TEXT
);
INSERT INTO tables(table_details) VALUES 
('Details from table 1'), 
('Details from table 2'),
('Details from table 3'),
('Details from table 4'),
('Details from table 5'),
('Details from table 6'),
('Details from table 7'),
('Details from table 8'),
('Details from table 9'),
('Details from table 10');


DROP TABLE IF EXISTS staff;
CREATE TABLE staff (
	staff_id SERIAL PRIMARY KEY,
	staff_first_name VARCHAR(255),
	staff_last_name VARCHAR(255),
	staff_role_description TEXT
);

INSERT INTO staff (staff_first_name, staff_last_name, staff_role_description) VALUES
('Tony', 'Montana', ' Role of Tony Montana staff'),
('Mark', 'Renom', ' Role of Mark Renton staff'),
('Vincent', 'Vega', ' Role of Vincent Vega staff');


DROP TABLE IF EXISTS customer;
CREATE TABLE customer (
	customer_id SERIAL PRIMARY KEY,
	customer_first_name VARCHAR(255),
	customer_surname VARCHAR(255),
	phone_number VARCHAR(255),
	cellphone_number VARCHAR(255),
	email_adress VARCHAR(255),
	other_details TEXT
);
INSERT INTO customer(customer_first_name, customer_surname, phone_number, email_adress, other_details) VALUES
('customer_1', 'surname customer_1', '', '', 'Details from customer 1'),
('customer_2', 'surname customer_2', '', '', 'Details from customer 2'),
('customer_3', 'surname customer_3', '', '', 'Details from customer 3'),
('customer_4', 'surname customer_4', '', '', 'Details from customer 4'),
('customer_5', 'surname customer_5', '', '', 'Details from customer 5'),
('customer_6', 'surname customer_6', '', '', 'Details from customer 5'),
('customer_7', 'surname customer_7', '', '', 'Details from customer 7'),
('customer_8', 'surname customer_8', '', '', 'Details from customer 8'),
('customer_9', 'surname customer_9', '', '', 'Details from customer 9'),
('customer_10', 'surname customer_10', '', '', 'Details from customer 10');

DROP TABLE IF EXISTS origin;
CREATE TABLE origin (
	origin_id SERIAL PRIMARY KEY,
	origin_name VARCHAR(255),
	origin_percentage_comission FLOAT
);
INSERT INTO origin (origin_name, origin_percentage_comission) VALUES
('Origin 1', 0.2),
('Origin 2', 0.1),
('Origin 3', 0.15);

DROP TABLE IF EXISTS dates;
CREATE TABLE dates (
	date_id SERIAL PRIMARY KEY,
	date_year INTEGER,
	date_month INTEGER,
	date_day INTEGER
);

INSERT INTO dates (date_day, date_month, date_year) VALUES
(1, 2, 2017),
(2, 7, 2017),
(5, 8, 2017),
(4, 11, 2017),
(12, 12, 2017),
(9, 6, 2017),
(29, 3, 2017),
(19, 10, 2017),
(20, 10, 2017),
(21, 10, 2017);

DROP TABLE IF EXISTS sales;
CREATE TABLE sales (
	sales_id SERIAL PRIMARY KEY,
	table_number INTEGER,
	customer_id INTEGER,
	staff_id INTEGER,
	origin_id INTEGER,
	date_id INTEGER,
	total_amount FLOAT,
	quantity INTEGER,
	cost_price FLOAT
	
);

INSERT INTO sales (table_number, customer_id, staff_id, origin_id, date_id, total_amount, cost_price, quantity) VALUES
(9, 1, 1, 3, 1, 50.00, 30.40, 1),
(7, 1, 2, 2, 2, 39.30, 19.50, 1),
(6, 6, 3, 1, 3, 80.90, 40.90, 1),
(5, 10, 1, 3, 4, 30.10, 10.70, 1),
(4, 2, 2, 2, 5, 120.45, 60.90, 1),
(4, 3, 3, 1, 6, 60.80, 30.80, 1),
(2, 5, 1, 3, 7, 80.80, 40.50, 1);

DROP TABLE IF EXISTS booking;
CREATE TABLE booking (
	booking_id SERIAL PRIMARY KEY,
	table_number INTEGER,
	customer_id INTEGER,
	origin_id INTEGER,
	date_id INTEGER,
	quantity INTEGER,
	num_persons INTEGER
);
INSERT INTO booking (table_number, customer_id, origin_id, date_id, num_persons, quantity) VALUES
(9, 1, 3, 9, 2, 1),
(7, 1, 2, 8, 3, 1),
(6, 6, 1, 7, 5, 1),
(5, 10, 3, 6, 3, 1),
(4, 2, 2, 5, 2, 1),
(4, 3, 1, 4, 4, 1),
(2, 5, 3, 3, 4, 1),
(2, 10, 2, 2, 4, 1),
(3, 3, 2, 1, 2, 1),
(4, 4, 1, 1, 5, 1);

COMMIT;

