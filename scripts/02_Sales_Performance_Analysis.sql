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
## Month-over-Month Revenue Growth

### Business Question

How did monthly revenue change compared to the previous month?

### SQL Query

```sql
WITH CurrentSales AS
(
    SELECT
        DATEPART(MONTH, o.OrderDate) AS [Month],
        SUM(CAST(p.Price AS BIGINT) * o.Quantity) AS Current_Month_Revenue
    FROM Products AS p
    LEFT JOIN Orders AS o
        ON p.ProductID = o.ProductID
    GROUP BY DATEPART(MONTH, o.OrderDate)
),

LaggedSales AS
(
    SELECT
        [Month],
        Current_Month_Revenue,
        LAG(Current_Month_Revenue, 1)
            OVER (ORDER BY [Month]) AS Previous_Month_Revenue
    FROM CurrentSales
)

SELECT
    [Month],
    Current_Month_Revenue,
    ISNULL(Previous_Month_Revenue, 0) AS Previous_Month_Revenue,
    ((Current_Month_Revenue - Previous_Month_Revenue) * 100.0 / Previous_Month_Revenue) AS MoM_Growth_Percentage
FROM LaggedSales
ORDER BY [Month];
```

> **Note:** `LAG()` retrieves the previous month's revenue, enabling the calculation of Month-over-Month (MoM) revenue growth.
