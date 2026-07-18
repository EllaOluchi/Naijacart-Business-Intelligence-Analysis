# 3. Product Analysis

This section evaluates product and category performance to identify the key drivers of revenue and sales volume during 2025.

---

## Top Products by Revenue

### Business Question

Which products generated the highest revenue during 2025?

### SQL Query

```sql
SELECT TOP 10
    p.ProductName,
    SUM(CAST(p.Price AS BIGINT) * o.Quantity) AS RevenuePerProduct
FROM Products AS p
LEFT JOIN Orders AS o
    ON p.ProductID = o.ProductID
GROUP BY p.ProductName
ORDER BY RevenuePerProduct DESC;
```

---

## Top Products by Sales Volume

### Business Question

Which products recorded the highest number of units sold?

### SQL Query

```sql
SELECT TOP 10
    p.ProductName,
    SUM(o.Quantity) AS UnitsSold
FROM Products AS p
LEFT JOIN Orders AS o
    ON p.ProductID = o.ProductID
GROUP BY p.ProductName
ORDER BY UnitsSold DESC;
```

---

## Lowest Revenue-Generating Products

### Business Question

Which products contributed the least revenue during 2025?

### SQL Query

```sql
SELECT TOP 10
    p.ProductName,
    SUM(CAST(p.Price AS BIGINT) * o.Quantity) AS RevenuePerProduct
FROM Products AS p
LEFT JOIN Orders AS o
    ON p.ProductID = o.ProductID
GROUP BY p.ProductName
ORDER BY RevenuePerProduct ASC;
```

---

## Revenue by Product Category

### Business Question

Which product categories generated the highest revenue?

### SQL Query

```sql
SELECT
    p.Category,
    SUM(CAST(p.Price AS BIGINT) * o.Quantity) AS Total_Revenue
FROM Products AS p
LEFT JOIN Orders AS o
    ON p.ProductID = o.ProductID
GROUP BY p.Category
ORDER BY Total_Revenue DESC;
```

---

## Sales Volume by Product Category

### Business Question

Which product categories recorded the highest sales volume?

### SQL Query

```sql
SELECT
    p.Category,
    SUM(o.Quantity) AS Quantity_Sold
FROM Products AS p
LEFT JOIN Orders AS o
    ON p.ProductID = o.ProductID
GROUP BY p.Category
ORDER BY Quantity_Sold DESC;
```

---

## Product Revenue Contribution

### Business Question

How much do the top-performing products contribute to total company revenue?

### SQL Query

```sql
WITH TotalRevenue AS
(
    SELECT TOP 5
        p.ProductName,
        SUM(CAST(p.Price AS BIGINT) * o.Quantity) AS Revenue
    FROM Orders AS o
    INNER JOIN Products AS p
        ON o.ProductID = p.ProductID
    GROUP BY p.ProductName
    ORDER BY Revenue DESC
)

SELECT
    ProductName,
    CAST(
        SUM(Revenue) /
        (
            SELECT
                SUM(CAST(p.Price AS DECIMAL(18,2)) * o.Quantity)
            FROM Orders AS o
            INNER JOIN Products AS p
                ON o.ProductID = p.ProductID
        ) * 100
        AS DECIMAL(10,2)
    ) AS PercentageToTotal
FROM TotalRevenue
GROUP BY ProductName
ORDER BY PercentageToTotal DESC;
```
