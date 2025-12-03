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


INSERT INTO customers VALUES(full_name, email, phone, registration_date)
                               ('Boutuil Khalid','oldm2563@gmail.com','06682736193','2023-02-17'),
                               ('Mazouz Chahd','mazouzshahd22@gmail.com','06682736193','2020-10-27'),
                               ('michal jackson','jackson41@outlook.com','5551234562','1993-06-12'),
                               ('peter parker','imnotspiderman12@gmail.com','08766372792','2002-09-30'),
                               ('Tony Stark','tonystark12@gmail.com','08763455667','2005-01-20');


INSERT INTO `advisors` VALUES ('walter white','hisenberg00@gmail.com'),
                              ('Vergil','power32@gmail.com'),
                              ('harry potter','wizard21@hogwards.ho');


INSERT INTO `accounts` VALUES (1001,2501,'Checking',1,1),
                              (1002,2501,'Savings',2,1),
                              (1003,501,'Business',3,3),
                              (1004,1501,'Business',4,2),
                              (1005,101,'Checking',5,1),
                              (1006,3400,'Checking',1,3);

INSERT INTO `transactions` VALUES (200,'debit','2024-10-01 14:22:00',1),
                                  (1500,'credit','2024-11-11 09:13:00',2),
                                  (75.25,'debit','2024-12-02 18:44:00',3),
                                  (20000,'credit','2024-12-15 11:30:00',4),
                                  (120,'debit','2024-12-20 08:05:00',5),
                                  (500,'credit','2024-12-25 16:52:00',6);