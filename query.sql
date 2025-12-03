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

--7/ Show all transactions
SELECT * FROM transactions;

--8/ Show accounts with a balance > 10000
SELECT * FROM accounts WHERE balance > 10000;

--9/ Display accounts with a balance ≤ 0
SELECT * FROM accounts WHERE balance <= 0;

--10/ Display debit transactions
SELECT * FROM transactions WHERE transaction_type = "debit";

--11/ Display transactions of type "credit"
SELECT * FROM transactions WHERE transaction_type = "credit";

--12/ Display transactions for account_id = 1
SELECT * FROM transactions WHERE account_id = 1;

--13/ Display customers whose account is managed by advisor_id = 2
SELECT customers.*, accounts.advisors_id FROM CUSTOMERS JOIN accounts ON customers.customer_id = accounts.customers_id WHERE advisors_id = 2;

--14/ Display accounts with account_type = "Savings"
SELECT * FROM accounts WHERE account_type = "Savings";

--15/ Display transactions with an amount ≥ 500
SELECT * FROM transactions WHERE ammount >= 500;
