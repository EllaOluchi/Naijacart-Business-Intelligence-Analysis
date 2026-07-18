# 1. Exploratory Data Analysis (EDA)

## Business Question

Before performing the analysis, it was necessary to understand the size of the dataset by determining:

- Total number of registered customers
- Total number of orders processed
- Total number of products available

## SQL Query

```sql
-- Total Customers
SELECT COUNT(CustomerID) AS Customer_Count
FROM Customers;

-- Total Orders
SELECT COUNT(OrderID) AS Total_Orders
FROM Orders;

-- Total Products
SELECT COUNT(ProductID) AS Total_Products
FROM Products;
```
## Data Coverage

### Business Question

What is the date range covered by the dataset?

### SQL Query

```sql
SELECT
    MIN(OrderDate) AS Start_Date,
    MAX(OrderDate) AS End_Date
FROM Orders;
```
## Data Integrity Check

### Business Question

Do the primary key columns contain any duplicate records?

### SQL Query

```sql
-- Check for duplicate Customer IDs
SELECT
    CustomerID,
    COUNT(CustomerID) AS CountPerID
FROM Customers
GROUP BY CustomerID
HAVING COUNT(CustomerID) > 1;

-- Check for duplicate Order IDs
SELECT
    OrderID,
    COUNT(OrderID) AS CountPerID
FROM Orders
GROUP BY OrderID
HAVING COUNT(OrderID) > 1;

-- Check for duplicate Product IDs
SELECT
    ProductID,
    COUNT(ProductID) AS CountPerID
FROM Products
GROUP BY ProductID
HAVING COUNT(ProductID) > 1;
```

### Expected Result

All three queries should return **no rows**, confirming that the `CustomerID`, `OrderID`, and `ProductID` columns contain unique values and maintain the integrity of the dataset.
