/*
NULL means Nothing,unknown
NULL is not equal to anything
-NULL is not 0
-NULL is not empty string
-NULL is not blank space

Removing and replacing NULLS-ISNULL,COALESCE
now we want to do reverse use NULLIF
To check whether there is NULL - IS NULL , IS NOT NULL	we get boolean values TRUE or FALSE

#ISNULL-Replaces NULL with a specific value
COALESCE-Returns the first non-null from a list-more then one condition of null-
if is is null then this if this is also not null then that

ISNULL is limited to two values
It is fast
SSMS-ISNULL
ORACLE-NVL
MYSQL-IFNULL

COALESCE- Unlimited values
Slow
Avaible in all DBs

*/

USE SalesDB

---Find the average scores of customers
SELECT * FROM SALES.Customers

SELECT 
SCORE
FROM
SALES.Customers







SELECT 
ISNULL(SCORE,[AVG SCORE]) AS [MEAN IMP]
FROM(
SELECT SCORE,
AVG(SCORE) OVER() AS [AVG SCORE]
FROM
SALES.Customers
) ABC

SELECT NULL+5

/*Display the full name of customers in a single field by merging their first name and last names and add
10 bonus points to each customer's score
*/

SELECT *
FROM
SALES.Customers

SELECT 
CONCAT(FIRSTNAME,' ',ISNULL(LASTNAME,'')) AS FULLNAME,
SCORE,
ISNULL(SCORE,0)+10 AS [BONUS POINTS ADD]
FROM SALES.Customers

SELECT * FROM SALES.Customers

SELECT 
FIRSTNAME + ' '+ISNULL(LASTNAME,'')
FROM SALES.Customers

---Handling the NULL before Joins

