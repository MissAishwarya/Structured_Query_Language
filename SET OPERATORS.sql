USE MYDATABASE

 
SELECT 
FN,LN
FROM EMPT

UNION

SELECT 
first_name ,country 
FROM customers

---This will not work.
SELECT FN
FROM EMPT

UNION

SELECT 
id
FROM customers

---ORDER OF THR COLUMNS MATTERS
SELECT 
ID
FROM CUSTOMERS
UNION
SELECT FN
FROM EMPT

USE SALESDB

SELECT * FROM SALES.Customers

SELECT * FROM SALES.Employees
---UNION OPERATOR
SELECT
FirstName,LastName
FROM SALES.Customers
UNION
SELECT
FirstName ,LastName
FROM SALES.Employees
---UNION ALL OPERATOR
---Returns all rows from both queries,including duplicates

SELECT
FirstName,LastName
FROM SALES.Customers
UNION ALL
SELECT
FirstName,LastName
FROM SALES.Employees

---Find employees who are not customers at the same time
SELECT
FirstName,LastName
FROM SALES.Employees
EXCEPT
SELECT
FirstName,LastName
FROM SALES.Customers

---INTERSECT Find Employees who are also customers
SELECT
FirstName,LastName
FROM SALES.Customers 
INTERSECT
SELECT
FirstName,LastName
from sales.Employees

---orders data are stored in separate tables (orders and ordersarchive)
---Combine all orders data into one report without duplicates


select * from sales.Orders
union
select * from sales.OrdersArchive 