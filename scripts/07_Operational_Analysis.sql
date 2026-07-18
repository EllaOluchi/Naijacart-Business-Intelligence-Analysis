# 7. Operational Analysis

This section evaluates order fulfilment and shipping performance to identify operational challenges that may have impacted customer experience during 2025.

---

## Delivery Status

### Business Question

What proportion of orders were delivered versus undelivered?

### SQL Query

```sql
-- Delivered Orders
SELECT
    COUNT(OrderID) AS Delivered
FROM Orders
WHERE ShippedDate IS NOT NULL;

-- Undelivered Orders
SELECT
    COUNT(OrderID) AS Undelivered
FROM Orders
WHERE ShippedDate IS NULL;
```

---

## Unshipped Orders by Month

### Business Question

Which months recorded the highest number of orders that were not shipped?

### SQL Query

```sql
SELECT
    DATENAME(MONTH, OrderDate) AS [Month],
    COUNT(OrderID) AS Orders_Not_Shipped
FROM Orders
WHERE ShippedDate IS NULL
GROUP BY DATENAME(MONTH, OrderDate)
ORDER BY Orders_Not_Shipped DESC;
```

---

## Average Shipping Delay by Month

### Business Question

What was the average shipping delay for fulfilled orders during each month?

### SQL Query

```sql
WITH OrderDelays AS
(
    SELECT
        OrderDate,
        CAST(
            DATEDIFF(
                DAY,
                OrderDate,
                COALESCE(ShippedDate, OrderDate)
            ) AS DECIMAL(10,2)
        ) AS Delay_In_Days
    FROM Orders
)

SELECT
    DATENAME(MONTH, OrderDate) AS [Month],
    SUM(Delay_In_Days) AS Total_Delay_Days,
    COUNT(*) AS Total_Orders,
    CAST(
        ROUND(AVG(Delay_In_Days), 0)
        AS DECIMAL(10,2)
    ) AS Average_Delay_Days
FROM OrderDelays
GROUP BY DATENAME(MONTH, OrderDate)
ORDER BY Average_Delay_Days DESC;
```

> **Note:** `COALESCE()` replaces `NULL` shipping dates with the order date, preventing `DATEDIFF()` from returning `NULL` for undelivered orders. The final result is rounded to the nearest whole day and displayed as a decimal for consistency.
