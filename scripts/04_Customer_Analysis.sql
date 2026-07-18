# 4. Customer Analysis

This section evaluates customer spending, geographic distribution, purchasing activity, and average order value to understand customer behaviour and engagement during 2025.

---

## Top Customers by Total Spending

### Business Question

Which customers generated the highest revenue during 2025?

### SQL Query

```sql
SELECT TOP 10
    c.CustomerID,
    CONCAT(c.FirstName, ' ', c.LastName) AS Full_Name,
    SUM(CAST(p.Price AS BIGINT) * o.Quantity) AS Total_Spending
FROM Customers AS c
LEFT JOIN Orders AS o
    ON c.CustomerID = o.CustomerID
LEFT JOIN Products AS p
    ON o.ProductID = p.ProductID
GROUP BY
    c.CustomerID,
    CONCAT(c.FirstName, ' ', c.LastName)
ORDER BY Total_Spending DESC;
```

> **Note:** `CustomerID` is included in the `GROUP BY` clause because multiple customers may share the same full name.

---

## Customer Distribution by State

### Business Question

Which states have the highest customer concentration?

### SQL Query

```sql
SELECT TOP 10
    State,
    COUNT(CustomerID) AS Customers_Per_State
FROM Customers
GROUP BY State
ORDER BY Customers_Per_State DESC;
```

---

## Active Customers (6+ Unique Months)

### Business Question

Which customers remained active for more than six unique months during 2025?

### SQL Query

```sql
SELECT
    o.CustomerID,
    CONCAT(c.FirstName, ' ', c.LastName) AS Full_Name,
    COUNT(DISTINCT DATEPART(MONTH, o.OrderDate)) AS Active_Months
FROM Orders AS o
INNER JOIN Customers AS c
    ON o.CustomerID = c.CustomerID
GROUP BY
    o.CustomerID,
    CONCAT(c.FirstName, ' ', c.LastName)
HAVING COUNT(DISTINCT DATEPART(MONTH, o.OrderDate)) > 6
ORDER BY Active_Months DESC;
```

---

## Average Order Value (AOV) by Customer

### Business Question

Which customers recorded the highest average order value during 2025?

### SQL Query

```sql
WITH Revenue AS
(
    SELECT
        CustomerID,
        SUM(CAST(p.Price AS BIGINT) * o.Quantity) AS Total_Revenue
    FROM Orders AS o
    LEFT JOIN Products AS p
        ON o.ProductID = p.ProductID
    GROUP BY CustomerID
),

TotalOrders AS
(
    SELECT
        CustomerID,
        COUNT(OrderID) AS Total_Orders
    FROM Orders
    GROUP BY CustomerID
)

SELECT TOP 10
    r.CustomerID,
    CONCAT(c.FirstName, ' ', c.LastName) AS Full_Name,
    r.Total_Revenue,
    t.Total_Orders,
    r.Total_Revenue / t.Total_Orders AS Average_Order_Value
FROM Revenue AS r
INNER JOIN TotalOrders AS t
    ON r.CustomerID = t.CustomerID
INNER JOIN Customers AS c
    ON r.CustomerID = c.CustomerID
ORDER BY Average_Order_Value DESC;
```
