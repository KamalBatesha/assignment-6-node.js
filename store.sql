-- Create Suppliers Table
CREATE TABLE Suppliers (
    SupplierID INT AUTO_INCREMENT PRIMARY KEY,
    SupplierName VARCHAR(255) NOT NULL,
    ContactNumber VARCHAR(50)
);

-- Create Products Table
CREATE TABLE Products (
    ProductID INT AUTO_INCREMENT PRIMARY KEY,
    ProductName VARCHAR(255) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    StockQuantity INT NOT NULL,
    SupplierID INT,
    FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID)
);

-- Create Sales Table
CREATE TABLE Sales (
    SaleID INT AUTO_INCREMENT PRIMARY KEY,
    ProductID INT,
    QuantitySold INT NOT NULL,
    SaleDate DATE NOT NULL,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);


-- Q1. (1 Mark) Write SQL commands to create the Products, Suppliers, and Sales tables
-- according to the given requirements, ensuring the following:
-- • Foreign Key Constraints on the SupplierID in the Products table and ProductID in the Sales table.
/*
-- Create the Suppliers table
CREATE TABLE Suppliers (
    SupplierID INT PRIMARY KEY,
    SupplierName VARCHAR(100) NOT NULL,
    ContactName VARCHAR(100),
    Phone VARCHAR(15)
);

-- Create the Products table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    SupplierID INT,
    Price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID)
);

-- Create the Sales table
CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    ProductID INT,
    Quantity INT NOT NULL,
    SaleDate DATE NOT NULL,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);
*/


--------------------------------------------------------------------------------------------------------------------------------


-- Q2. (1 Mark) Write an SQL command to modify the Products table to add a new
-- column called “Category” (text) to store product categories.

/*
ALTER TABLE Products ADD Category VARCHAR(100);
*/


--------------------------------------------------------------------------------------------------------------------------------


-- Q3. (1 Mark) Write an SQL command to delete the Sales table from the database.

/*
DROP TABLE Sales;
*/



--------------------------------------------------------------------------------------------------------------------------------


-- Q4. (1 Mark) Write an SQL command to insert a new supplier into the Suppliers table
-- with the following details:
-- • SupplierName: "Tech Supplies Co."
-- • ContactNumber: "123-456-7890"

/*
INSERT INTO Suppliers ( SupplierName, ContactNumber)
VALUES ('Tech Supplies Co.','123-456-7890');
*/


--------------------------------------------------------------------------------------------------------------------------------


-- Q5. (1 Mark) Write an SQL command to insert a new product into the Products table
-- with the following details:
-- • ProductName: "Smartphone"
-- • Price: 299.99
-- • StockQuantity: 50
-- • SupplierID: 1

/*
INSERT INTO Products (ProductName, Price,StockQuantity, SupplierID)
VALUES ('Smartphone', 299.99 , 50 , 1);
*/


--------------------------------------------------------------------------------------------------------------------------------

-- Q6. (1 Mark) Write an SQL command to update the price of the product named
-- "Smartphone" to 349.99.

/*
UPDATE Products SET Price = 349.99 WHERE ProductName = 'Smartphone';
*/


--------------------------------------------------------------------------------------------------------------------------------

-- Q7. (1 Mark) Write an SQL query to display each product’s total quantity sold and
-- total revenue generated. The result should include:
-- • ProductID
-- • ProductName
-- • TotalQuantitySold
-- • TotalRevenue

/*
SELECT 
    ProductID,
    ProductName,
    TotalQuantitySold,
    TotalRevenue
FROM 
    products;
*/



--------------------------------------------------------------------------------------------------------------------------------


-- Q8. Write an SQL query to find the total number of suppliers in the database.

/*
SELECT COUNT(*) AS TotalSuppliers FROM Suppliers;
*/