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
