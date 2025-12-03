CREATE DATABASE Bankly;

USE Bankly;

CREATE TABLE customers(
    customer_id int PRIMARY KEY AUTO_INCREMENT,
    full_name varchar(255),
    email varchar(255),
    phone varchar(20),
    registration_date date 
);

CREATE TABLE advisors(
    advisors_id int PRIMARY KEY AUTO_INCREMENT,
    full_name varchar(255),
    email varchar(255),
);

CREATE TABLE accounts(
    account_id int PRIMARY KEY AUTO_INCREMENT,
    account_number int,
    balance int,
    account_type enum('Checking','Savings','Business'),
    customer_id int,
    FOREIGN KEY (customers_id) REFERENCES customers (customer_id),
    advisors_id int,
    FOREIGN KEY (advisors_id) REFERENCES advisors (advisors_id)
);

CREATE TABLE transactions(
    transaction_id int PRIMARY KEY AUTO_INCREMENT,
    ammount float,
    transaction_type enum('debit','credit'),
    transaction_date datetime,
    account_id int,
    FOREIGN KEY (account_id) REFERENCES accounts (account_id)
);