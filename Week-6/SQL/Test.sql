-- 1.1
-- SELECT CustomerID AS "Customer ID", CompanyName AS "Company Name", [Address], City FROM Customers WHERE City = 'Paris' OR City = 'London'

-- 1.2
-- SELECT ProductID, ProductName FROM Products WHERE QuantityPerUnit LIKE '%bottle%';

-- 1.3
-- SELECT p.ProductID, p.ProductName, s.Country, s.CompanyName FROM Products p
-- INNER JOIN Suppliers s ON p.SupplierID = s.SupplierID WHERE QuantityPerUnit LIKE '%bottle%';

-- 1.4 Write an SQL Statement that shows how many products there are in each category.
-- Include Category Name in result set and list the highest number first.
-- SELECT c.CategoryName, count(p.ProductName) FROM Categories c
-- INNER JOIN Products p ON c.CategoryID = p.CategoryID GROUP BY c.CategoryName ORDER BY count(p.ProductName) DESC;

-- 1.5 List all UK employees using concatenation to join their title of courtesy, first name and last name together. Also include their city of residence.
-- SELECT TitleOfCourtesy + FirstName + LastName AS "Title and Name", City FROM Employees WHERE Country = 'UK';

-- 1.6 List Sales Totals for all Sales Regions (via the Territories table using 4 joins) with a Sales Total greater than 1,000,000.
-- Use rounding or FORMAT to present the numbers.
-- SELECT r.RegionDescription, FORMAT(SUM((od.UnitPrice*Quantity)*(1-Discount)), 'C', 'en-us') AS "Sales Total" FROM Region r
-- INNER JOIN Territories t ON r.RegionID = t.RegionID
-- INNER JOIN EmployeeTerritories et ON t.TerritoryID = et.TerritoryID
-- INNER JOIN Orders o ON et.EmployeeID = o.EmployeeID
-- INNER JOIN [Order Details] od ON o.OrderID = od.OrderID GROUP BY r.RegionDescription HAVING SUM((od.UnitPrice*Quantity)*(1-Discount)) > 1000000

-- 1.7 Count how many Orders have a Freight amount greater than 100.00 and either USA or UK as Ship Country.
-- SELECT * FROM Orders WHERE Freight > 100.00 AND (ShipCountry = 'UK' OR ShipCountry = 'USA');

-- 1.8 Write an SQL Statement to identify the Order Number of the Order with the highest amount of discount applied to that order.
-- SELECT o.OrderID, od.Discount AS "Highest Discount" FROM Orders o
-- INNER JOIN [Order Details] od ON o.OrderID = od.OrderID GROUP BY o.OrderID HAVING od.Discount=(od.Discount);

-- SELECT TOP 1 OrderID, FORMAT(SUM((UnitPrice*Quantity)*Discount), 'C', 'en-us') FROM [Order Details]
-- GROUP BY OrderID
-- ORDER BY SUM((UnitPrice*Quantity)*Discount) DESC