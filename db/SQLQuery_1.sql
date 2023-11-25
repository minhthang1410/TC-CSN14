CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY IDENTITY(1, 1),
    CustomerName VARCHAR(255),
    Address VARCHAR(255),
    City VARCHAR(255),
    Country VARCHAR(255)
);

-- CREATE TABLE Orders (
--     OrderID INT PRIMARY KEY,
--     CustomerID INT,
--     OrderDate DATE
-- );

-- CREATE TABLE Products (
--     ProductID INT PRIMARY KEY,
--     ProductName VARCHAR(255),
--     Category VARCHAR(255),
--     Unit VARCHAR(255),
--     Price DECIMAL
-- );

-- CREATE TABLE OrderDetails (
--     OrderDetailID INT PRIMARY KEY,
--     OrderID INT,
--     ProductID INT,
--     Quantity INT
-- );

-- SELECT * FROM Customers;
USE master;
GO
ALTER DATABASE Northwind
SET SINGLE_USER 
WITH ROLLBACK IMMEDIATE;
GO
DROP DATABASE Northwind;

