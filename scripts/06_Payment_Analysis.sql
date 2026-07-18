# 6. Payment Analysis

This section analyses customer payment preferences and evaluates how payment behaviour influenced revenue generation during 2025.

---

## Revenue by Payment Method

### Business Question

Which payment methods generated the highest revenue during 2025?

### SQL Query

```sql
SELECT
    o.PaymentMethod,
    SUM(CAST(p.Price AS BIGINT) * o.Quantity) AS Total_Revenue
FROM Orders AS o
LEFT JOIN Products AS p
    ON o.ProductID = p.ProductID
GROUP BY o.PaymentMethod
ORDER BY Total_Revenue DESC;
```

---

## Orders by Payment Method

### Business Question

Which payment methods were used most frequently by customers?

### SQL Query

```sql
SELECT
    PaymentMethod,
    COUNT(OrderID) AS Total_Orders
FROM Orders
GROUP BY PaymentMethod
ORDER BY Total_Orders DESC;
```

---

## Customers Using Multiple Payment Methods

### Business Question

What percentage of customers used more than one payment method during 2025?

### SQL Query

```sql
WITH NumberOfPaymentMethods AS
(
    SELECT
        c.CustomerID,
        COUNT(DISTINCT o.PaymentMethod) AS Payment_Methods
    FROM Customers AS c
    LEFT JOIN Orders AS o
        ON c.CustomerID = o.CustomerID
    GROUP BY c.CustomerID
    HAVING COUNT(DISTINCT o.PaymentMethod) > 1
)

SELECT
    CAST(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM Customers)
        AS DECIMAL(10,2)
    ) AS Percentage_of_Customers
FROM NumberOfPaymentMethods;
```

---

## Revenue by Number of Payment Methods Used

### Business Question

Do customers who use multiple payment methods generate higher revenue than customers who consistently use a single payment method?

### SQL Query

```sql
SELECT
    c.CustomerID,
    COUNT(DISTINCT o.PaymentMethod) AS Payment_Methods,
    ISNULL(SUM(CAST(p.Price AS BIGINT) * o.Quantity), 0) AS Total_Revenue
FROM Customers AS c
LEFT JOIN Orders AS o
    ON c.CustomerID = o.CustomerID
LEFT JOIN Products AS p
    ON o.ProductID = p.ProductID
GROUP BY c.CustomerID
ORDER BY
    Total_Revenue DESC,
    Payment_Methods DESC;
```
