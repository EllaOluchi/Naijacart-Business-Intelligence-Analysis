# 2. Sales Performance Analysis

This section evaluates NaijaCart's sales performance during 2025 by analysing total revenue, monthly sales trends, and regional revenue contribution.

---

## Total Revenue

### Business Question

**How much revenue did the company generate during 2025?**

### SQL Query

```sql
SELECT
    SUM(CAST(o.Quantity AS BIGINT) * p.Price) AS Revenue
FROM Products AS p
INNER JOIN Orders AS o
    ON p.ProductID = o.ProductID;
```

---

## Monthly Revenue & Order Trend

### Business Question

**How did revenue and order volume perform throughout the year?**

### SQL Query

```sql
SELECT
    DATENAME(MONTH, o.OrderDate) AS [Month],
    SUM(CAST(p.Price AS BIGINT) * o.Quantity) AS TotalRevenue,
    COUNT(o.OrderID) AS Total_Orders
FROM Products AS p
LEFT JOIN Orders AS o
    ON p.ProductID = o.ProductID
GROUP BY DATENAME(MONTH, o.OrderDate)
ORDER BY TotalRevenue DESC;
```

---

## Revenue by State

### Business Question

**Which states generated the highest revenue during 2025?**

### SQL Query

```sql
SELECT
    c.State,
    SUM(CAST(p.Price AS BIGINT) * o.Quantity) AS Revenue
FROM Customers AS c
LEFT JOIN Orders AS o
    ON c.CustomerID = o.CustomerID
LEFT JOIN Products AS p
    ON o.ProductID = p.ProductID
GROUP BY c.State
ORDER BY Revenue DESC;
```
