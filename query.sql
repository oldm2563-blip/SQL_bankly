--1/ insert new customer
INSERT INTO customers (full_name, email, phone, registration_date) VALUES
("goku", "goku@power.com", "0000000000", "2006-02-17");

--2/ Edit Customer Phone Number
UPDATE customers SET phone = "+212 73823764" WHERE customer_id = 4;

--3/ show all customers
SELECT * FROM customers;

--4/ show customers full name and email
SELECT full_name, email FROM customers;

--5/ show all accounts
SELECT * FROM accounts;

--6/ Show only account_number
SELECT account_number FROM accounts;
