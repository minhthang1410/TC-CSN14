-- Bài 1
SELECT * FROM Customers WHERE Country='Mexico'
-- Bài 2
SELECT DISTINCT Country FROM Customers
-- Bài 3
SELECT * FROM Customers WHERE Country IN ('Mexico', 'Canada', 'USA')
-- Bài 4
SELECT * FROM Customers WHERE Country='USA' AND City<>'San Francisco'
-- Bài 5
SELECT ProductName AS Name, Unit FROM Products WHERE Unit LIKE '%bottles%'
-- Bài 6
SELECT * FROM Products ORDER BY Price
-- Bài 7
SELECT TOP 5 * FROM Products WHERE Category='Beverages' ORDER BY Price DESC
-- Bài 8
SELECT * FROM Products WHERE Price>=10 AND Price<=25 AND Unit LIKE '%boxes%'
-- Bài 9
SELECT * FROM Orders
WHERE OrderDate >= '1996-08-01'
  AND OrderDate < '1996-09-01';
-- Bài 10
SELECT ProductID, Quantity
FROM OrderDetails
WHERE Quantity > 10

-- Bài 2
-- Ex 1
SELECT * FROM Orders
SELECT MIN(OrderDate) AS EarliestDate
FROM Orders;

-- Ex 2
SELECT COUNT(OrderID) AS TotalOrders
FROM Orders;

-- Ex 3
SELECT OrderID, SUM(Quantity) AS TotalItems
FROM OrderDetails
GROUP BY OrderID

-- Ex 4
SELECT SUM(Quantity)*1.0 / COUNT(DISTINCT OrderId) AS AvgItems
FROM OrderDetails;

-- Ex 5
SELECT OrderID, COUNT(DISTINCT ProductID) AS DistinctItems
FROM OrderDetails
GROUP BY OrderID;

-- Ex 6
SELECT Category, AVG(Price) AS AvgPrice
FROM Products
GROUP BY Category
HAVING AVG(Price) >= 20 AND AVG(Price) <= 30;

-- Ex 7
SELECT Country, COUNT(CustomerID) AS CustomerCount
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 10;

-- Ex 8
SELECT CustomerID, COUNT(CustomerID) AS Ordered
FROM Orders
GROUP BY CustomerID
ORDER BY Ordered DESC;

-- Ex 9
SELECT ProductID, COUNT(ProductID) AS Ordered
FROM OrderDetails
GROUP BY ProductID
HAVING COUNT(ProductID) > 10;

-- Ex 10
SELECT ProductID, SUM(Quantity) AS TotalItems
FROM OrderDetails
WHERE ProductID = 1
GROUP BY ProductID;