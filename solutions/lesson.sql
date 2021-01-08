USE sql_intro;

-- CREATE TABLE customer(
--     id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
--     name VARCHAR(20),
--     city VARCHAR(20),
--     gender INT
-- );

-- CREATE TABLE company(
--     id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
--     name VARCHAR(20),
--     industry VARCHAR(20),
--     employees INT
-- );
-- CREATE TABLE transaction(
--     id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    
--     item_purchased VARCHAR(20),
--     amount INT,
--     discount FLOAT DEFAULT 0, 
   
--     customer_id INT,
--     company_id INT,
--     FOREIGN KEY(customer_id) REFERENCES customer(id),
--     FOREIGN KEY(company_id) REFERENCES company(id)
-- );
-- INSERT INTO transaction (item_purchased, amount, customer_id, company_id)
-- VALUES("The Everlasting Wind", 2, 1711, 32);
-- INSERT INTO customer (id, name, city, gender)
-- VALUES(1000, "Byron Trunks", "Corinth", 3);

-- INSERT INTO company(id, name, industry, employees)
-- VALUES(10, "Twitch", "Entertainment", 800);
-- INSERT INTO transaction (item_purchased, amount, customer_id, company_id)
-- VALUES("The Everlasting Wind", 2, 1000, 10);
-- SELECT * FROM transaction
-- SELECT * FROM company;
-- SELECT * FROM customer;
-- SELECT * FROM transaction;
-- SELECT * 
-- FROM transaction, customer
-- WHERE transaction.customer_id = customer.id;

Alias
So far we were able to join transaction and one other table separately, but our original goal was to join all three tables together.



To do that, you might think to do something like this:

COPY
SELECT *
FROM transaction, customer, company
WHERE 
    transaction.customer_id = customer.id AND
    transaction.company_id = company.id;


However, if you looked close enough, you will have noticed that our resulting table only has one name column! That's because both customer and company have a column named name, and SQL can't have repeating columns!



The solution to this problem is to use something known as aliases - this allows us to give a name to our columns/tables and thereby be more specific in our queries.



Using an alias requires the AS keyword, like so:

SELECT 
    item_purchased, amount, 
    customer.name AS cust_name, -- aliasing
    company.name AS comp_name
FROM 
    transaction, 
    customer, 
    company
WHERE 
    transaction.customer_id = customer.id AND
    transaction.company_id = company.id;