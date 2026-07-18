# # 📊 NaijaCart Sales Performance Analysis (SQL)

## Project Overview

This project presents an end-to-end SQL analysis of **NaijaCart**, a Nigerian e-commerce company specializing in smartphones, consumer electronics, home appliances, fashion items, groceries, and accessories.

Following the company's 2025 financial year, management commissioned a Business Intelligence review to evaluate whether strategic growth objectives were achieved and to identify opportunities for improving profitability, customer retention, operational efficiency, and long-term growth.

Using SQL Server, this project analyzes sales performance, customer behaviour, referral effectiveness, regional performance, product contribution, payment preferences, and logistics performance to support management's strategic planning for 2026.

---

# Business Problem

At the beginning of **2025**, NaijaCart introduced several strategic initiatives aimed at increasing revenue, expanding its customer base, improving operational efficiency, and strengthening customer retention.

Despite processing over **4,000 customer orders**, management lacked visibility into:

- Whether growth targets were achieved
- Which products generated revenue versus sales volume
- Which states deserved increased investment
- Whether the referral programme created meaningful business value
- How customer payment preferences influenced purchasing behaviour
- Which operational challenges affected customer experience
- Where opportunities existed to improve profitability in 2026

This project answers these business questions using SQL-driven analysis and evidence-based recommendations.
---

# Objectives

The project aims to:

- Evaluate the company's 2025 strategic performance.
- Analyse revenue growth and sales performance.
- Identify top-performing products and categories.
- Analyse customer purchasing behaviour.
- Evaluate the effectiveness of the referral programme.
- Analyse payment preferences.
- Assess delivery performance and operational efficiency.
- Generate business recommendations supported by data.

---
# Dataset

The project uses relational datasets consisting of:

- Customers
- Orders
- Products

The analysis covers:

- Customer information
- Product catalogue
- Orders
- Referral relationships
- Delivery status
- Payment methods
- Order dates
- Shipping dates

---

# Tools Used

- SQL Server
- SQL Server Management Studio (SSMS)
- GitHub

---

# SQL Concepts Demonstrated

This project demonstrates the practical application of:

- Joins
- Common Table Expressions (CTEs)
- Window Functions
- CASE Statements
- Aggregate Functions
- Date Functions
- Ranking Functions
- Subqueries
- GROUP BY & HAVING
- Views
- Data Cleaning
- Business KPI Calculations
---

# Analysis Sections

The project is organised into the following sections.

## 1. Exploratory Data Analysis

Business Questions

- How many customers, products and orders exist?
- What is the overall revenue generated?

📷 **<img width="353" height="344" alt="image" src="https://github.com/user-attachments/assets/67685164-0a88-4480-bd73-1eeca56c14de" />
**
EDA Queries

---

## 2. Sales Performance Analysis

Business Questions

- Was the revenue target achieved?
- Which months generated the highest revenue?
- Which states generated the most revenue?

Analysis includes:

- Total Revenue
- Monthly Revenue
- Revenue by State
- Monthly Order Trend
- Revenue Growth

📷 **Insert Snapshot**
Sales Performance Queries

---

## 3. Product Analysis

Business Questions

- Which products generated the highest revenue?
- Which products generated the highest sales volume?
- Which categories contributed the most revenue?

Analysis includes:

- Top 10 Products by Revenue
- Top 10 Products by Quantity
- Bottom 10 Products
- Revenue by Category
- Revenue Contribution Analysis

📷 **Insert Snapshot**
Product Analysis Queries

---

## 4. Customer Analysis

Business Questions

- Who are the highest spending customers?
- Which customers remain active throughout the year?
- What is the average customer spending?

Analysis includes:

- Top Customers
- Customer Revenue
- Average Order Value
- Customer Engagement
- Customers Active in More Than Six Months

📷 **Insert Snapshot**
Customer Analysis Queries

---

## 5. Referral Programme Analysis

Business Questions

- How effective was the referral programme?
- Did referred customers generate meaningful revenue?
- Who were the highest-performing referrers?

Analysis includes:

- Referral Revenue
- Number of Referrers
- Top Referrers
- Organic vs Referred Customer Comparison

📷 **Insert Snapshot**
Referral Analysis Queries

---

## 6. Payment Analysis

Business Questions

- Which payment methods generated the highest revenue?
- Which payment methods were used most frequently?

Analysis includes:

- Revenue by Payment Method
- Orders by Payment Method
- Customer Payment Behaviour

📷 **Insert Snapshot**
Payment Analysis Queries

---

## 7. Operational Performance

Business Questions

- How efficient were deliveries?
- Which months experienced operational challenges?

Analysis includes:

- Delivered vs Undelivered Orders
- Average Delivery Delay
- Monthly Undelivered Orders

📷 **Insert Snapshot**
Operational Analysis Queries
---

# Key Findings

## Revenue

- Total Revenue reached **₦2.81 Billion** in 2025.
- Revenue exceeded the previous year's performance.
- December generated the highest sales volume.
---

## Products

- Electronics generated the highest category revenue.
- Four of the Top 10 revenue-generating products belong to the Electronics category.
- Revenue is well distributed across products, indicating low product concentration risk.
---

## Customers

- Only 260 registered customers placed orders.
- 148 customers purchased in more than six distinct months, indicating strong engagement among active buyers.
- Customer revenue remains concentrated among a relatively small number of customers.
---

## Referrals

- Referral customers generated approximately **₦995 Million** in revenue.
- Only a small number of referrers generated substantial downstream revenue.
- Referred customers generally did not outperform the company's highest-value organic customers.
---

## Payments

- OPay was the most frequently used payment method.
- Gift Cards generated the highest revenue.

---

## Operations

- 719 orders remained undelivered.
- Average delivery delay remained between 4–5 days across all states.
- Delivery performance showed limited regional variation, suggesting possible operational or policy constraints.

---

# Business Recommendations

Based on the analysis, management should consider:

- Strengthening supplier relationships within the Electronics category while diversifying suppliers to improve procurement resilience.
- Reviewing the referral programme to improve profitability and reduce incentive costs.
- Investigating the causes of long-standing undelivered orders.
- Reviewing delivery policies and logistics processes to reduce delivery times.
- Expanding successful commercial strategies observed in high-performing states where supported by further operational analysis.
- Increasing customer retention initiatives to encourage repeat purchases.

---

# Repository Structure

```
NaijaCart-SQL-Analysis
│
├── Dataset
├── SQL
│   ├── 01_Exploratory_Analysis.sql
│   ├── 02_Sales_Performance.sql
│   ├── 03_Product_Analysis.sql
│   ├── 04_Customer_Analysis.sql
│   ├── 05_Referral_Analysis.sql
│   ├── 06_Payment_Analysis.sql
│   ├── 07_Operational_Analysis.sql
│
├── Report.md
├── README.md
└── Images
```

---

# Conclusion

This project demonstrates how SQL can be used to transform raw transactional data into actionable business insights.

Beyond identifying revenue trends and customer behaviour, the analysis evaluates the effectiveness of strategic initiatives introduced during 2025 and provides evidence-based recommendations to support management's planning for 2026.

The project showcases not only SQL proficiency but also business problem solving, analytical thinking, and decision-making using data.
