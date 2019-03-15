-- CREATE DATABASE my_db;

-- USE my_db;
-- CREATE TABLE film_table(
--     film_name VARCHAR(20),
--     film_type VARCHAR(15)
-- );

-- Get table info
-- SP_HELP film_table;

-- DROP TABLE film_table

-- USE my_db
-- CREATE TABLE film_table(
--     film_id INT NOT NULL IDENTITY PRIMARY KEY,
--     film_name VARCHAR(20),
--     film_type VARCHAR(15),
--     release_date DATE,
--     director_name VARCHAR(30),
--     writer_name VARCHAR(30),
--     star_name VARCHAR(30),
--     film_language VARCHAR(15),
--     official_website VARCHAR(40),
--     plot_summary TEXT
-- );

-- SP_HELP film_table;

-- ALTER TABLE film_table
--     Add a new column
--     ADD run_time INT;
--     Edit existing column
-- ADD CONSTRAINT df_plot_summary DEFAULT 'No current summary is available' FOR plot_summary;

-- Seed data to table
-- INSERT INTO table_name (col1, col2,...) VALUES (val1, val2,...)
-- Single quotes around string values, order doesn't matter
-- INSERT INTO film_table (film_name,film_type,director_name,film_language) VALUES ('Jaws','Horror','Spielberg','English');
-- INSERT INTO film_table (film_name,film_type,director_name,film_language) VALUES ('Hot Fuzz','Comedy','Edgar Wright','English');
-- INSERT INTO film_table (film_name,film_type,director_name,film_language) VALUES ('Shaun of the Dead','Comedy','Edgar Wright','English');
-- INSERT INTO film_table (film_name,film_type,director_name,film_language) VALUES ('Alien','Horror','Ridley Scott','English');

-- Update table data
-- UPDATE table SET attribute WHERE query
-- UPDATE film_table SET film_type = 'Thriller' WHERE film_name = 'Jaws';

-- UPDATE film_table SET film_type = 'Comedy' WHERE director_name = 'Edgar Wright';

-- Delete table data
-- DELETE FROM film_table WHERE director = 'Edgar Wright';

-- SELECT film_id, film_name, film_type FROM film_table ORDER BY col_name;
-- SELECT * FROM film_table ORDER BY director_name;

-- SELECT * FROM Employees WHERE city = 'london';

-- SELECT * FROM Employees WHERE TitleOfCourtesy = 'Dr.';

-- SELECT count(*) FROM Products WHERE Discontinued = '1';
-- <,>, <=, >=, !=
-- AND/OR for 'if' style statements
-- SELECT * FROM products WHERE Discontinued = '1' AND UnitsInStock != 0 ORDER BY UnitPrice DESC;

-- SELECT ProductName, UnitPrice, UnitsInStock FROM Products WHERE UnitPrice <= 30 AND UnitsInStock > 0;

-- DISTINCT returns results without duplicates
-- SELECT DISTINCT city FROM Customers;

-- Wildcard searches
-- _ is a blank chat, % is any number of blank chars
-- [abc] is a range of value, [^abc] is not this range
-- SELECT ContactName, CustomerID FROM Customers WHERE ContactName LIKE '%[ABC]%[abc]%[abc]%' ORDER BY ContactName;

-- WHERE col_name IN ('option1', 'option2',...) returns values which match any of the options
-- SELECT * FROM Customers WHERE Region IN ('AK', 'SP') ORDER BY Region;

-- BETWEEN - Selects values between a range of values
-- SELECT * FROM EmployeeTerritories WHERE TerritoryID BETWEEN 06897 AND 10038;

-- SELECT ProductName, ProductID FROM products WHERE UnitPrice < 5.00;

-- SELECT * FROM Categories WHERE CategoryName LIKE '[BS]%';

-- SELECT count(*) FROM Orders WHERE EmployeeID = 5 OR EmployeeID = 7;

-- AS - Column name will be given an Alias
-- col1 + col2 will concatenate the data
-- SELECT CompanyName AS "Company Name", city+','+Country AS city FROM Customers;

-- SELECT CompanyName AS "Company Name", city+','+Country AS city, region FROM Customers WHERE region IS NULL;

-- SELECT DISTINCT country FROM Customers WHERE region IS NOT NULL;

-- Arithmetic/Math Operators: Same as before
-- SELECT UnitPrice, Quantity, Discount, UnitPrice*Quantity*(1-Discount) AS "Net Total" FROM [Order Details] ORDER BY "Net Total" DESC;

-- ORDER BY col_name. DESC = Descending, ASC = Ascending



-- String Functions
-- SELECT UPPER(CompanyName), LEFT(PostalCode,CHARINDEX(' ',PostalCode)-1) AS "Post Code Area", LEN(REPLACE(CompanyName,' ','')) AS "Number of Characters", CHARINDEX(' ',PostalCode) AS "Index of White Space" FROM Customers WHERE Country='UK';

-- SELECT ProductName, CHARINDEX('''', ProductName) FROM Products WHERE CHARINDEX('''', ProductName) > 0;

-- SELECT OrderID, YEAR(OrderDate) AS "Year of Order", MONTH(OrderDate) AS "Month of Order", DAY(OrderDate) AS "Day of Order" FROM ORDERS;

-- SELECT *, GETDATE() AS "Current Date" FROM Orders;

-- SELECT OrderDate, DATEADD(d, 5, OrderDate) AS "Due Date" FROM Orders;



-- Case Statements
-- Behaves like a SWITCH/IF-ELSE Statement
-- SELECT OrderID, CASE
--     WHEN DATEDIFF(d,OrderDate,ShippedDate) < 7 THEN 'On Time'
--     ELSE 'Overdue'
--     END AS "Status" FROM Orders

-- SELECT EmployeeID, BirthDate, CASE
--     WHEN DATEDIFF(yy,BirthDate,GETDATE()) > 65 THEN 'Retired'
--     WHEN DATEDIFF(yy,BirthDate,GETDATE()) < 60 THEN 'Keep Working'
--     ELSE 'Near Retirement'
--     END FROM Employees

-- SELECT  SupplierID, SUM(UnitsOnOrder) AS "Total on Order",
--         AVG(UnitsOnOrder) AS "Average on Order",
--         MIN(UnitsOnOrder) AS "Min on Order",
--         MAX(UnitsOnOrder) AS "Max on Order"
-- FROM Products GROUP BY SupplierID;

-- SELECT CategoryID, AVG(ReorderLevel) AS "Average" FROM Products GROUP BY CategoryID ORDER BY "Average" DESC;

-- SELECT SupplierID, SUM(UnitsOnOrder) AS "Total on Order", AVG(UnitsOnOrder) AS "Average on Order" FROM Products GROUP BY SupplierID HAVING SUM(UnitsOnOrder) > 50;



-- Subqueries
-- Query for all customers with orders then compares with list of all customers and returns customers without an order
-- SELECT CompanyName FROM Customers WHERE CustomerID NOT IN (SELECT CustomerID FROM Orders);

-- SELECT OrderID, ProductID, UnitPrice, Quantity, Discount,(SELECT MAX(UnitPrice) FROM [Order Details]) AS "Max Price" FROM [Order Details];

-- UNION ALL includes duplicates, UNION returns unique values
-- SELECT EmployeeID AS "Employee/Supplier", FirstName + ' ' + LastName AS "Name" FROM Employees UNION SELECT SupplierID, CompanyName FROM Suppliers;

-- SELECT OrderID, ProductID, UnitPrice, Quantity, Discount FROM [Order Details] WHERE ProductID IN (SELECT ProductID FROM Products WHERE Discontinued = 1);

-- SELECT discontinued from products

-- Joins
-- Inner Join = Most frequently used. Returns all rows when there is at least one match in BOTH tables
-- Left Join or Left Outer Join = Returns all rows in left table, and the matched rows from the right table regardless of matching entry in the right table.
-- Right Join or Right Outer Join = Returns all rows from right table, and the matched rows from the left table regardless of any matching entry in the left table.
-- Full Join of Full Outer Join = Returns all rows in both tables regardless of any match. Where no match exists, the missing side will contain NULL

-- Suppliers and Products, SupplierID is common
-- SELECT col1, col2,... FROM left_table JOIN right_table ON left_col_key = right_col_key

-- SELECT p.SupplierID AS "Supplier ID", CompanyName AS "Company Name", AVG(UnitsOnOrder)
-- FROM Products p
-- INNER JOIN Suppliers s
-- ON p.SupplierID = s.SupplierID GROUP BY p.SupplierID, CompanyName;

-- SELECT ProductName, UnitPrice, CompanyName AS "Supplier", CategoryName AS "Category"
-- FROM Products p
-- INNER JOIN Suppliers s ON p.SupplierID = s.SupplierID
-- INNER JOIN Categories c ON p.CategoryID = c.CategoryID;

-- SELECT CompanyName, Region, ProductName
-- FROM Suppliers s
-- INNER JOIN Products p ON s.SupplierID = p.SupplierID;

-- SELECT OrderID, OrderDate, Freight, CompanyName AS "Customer", FirstName + LastName AS "Employee Name" FROM Orders o
-- INNER JOIN Customers c ON o.CustomerID = c.CustomerID
-- INNER JOIN Employees e ON o.EmployeeID = e.EmployeeID;

-- SELECT OrderID, OrderDate FROM Orders

-- Pre 2012
-- SELECT OrderID, CONVERT(VARCHAR(100),OrderDate,121) S [dd/mm/yyyy] FROM Orders;

-- Post 2012
-- SELECT OrderID, FORMAT(OrderDate, 'dd/MM/yyyy') FROM Orders;