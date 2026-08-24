# NaijaCart Business Intelligence Report
## 2025 Sales Performance Review & Strategic Recommendations

**Prepared By:** *Emmanuella Nwobu*

**Role:** Data Analyst 

**Tools Used:** SQL Server (SSMS)

---

# Executive Summary

NaijaCart concluded the 2025 financial year with **₦2.81 billion** in total revenue from **4,000 customer orders**, demonstrating continued business growth compared to the previous year. The analysis was conducted to evaluate the company's strategic performance, assess customer behaviour, measure the effectiveness of the referral programme, identify operational challenges, and provide recommendations for improving profitability and supporting management's 2026 planning.

The analysis shows that revenue growth was driven primarily by the Electronics category, which generated the highest category revenue, supported by four products ranked among the company's top ten revenue-generating products. Revenue distribution across products remained well diversified, indicating low product concentration risk.

Customer analysis revealed that only **260 registered customers** placed orders during the year, while **148 customers remained active across more than six distinct months**, suggesting strong engagement among a significant portion of purchasing customers.

The referral programme contributed approximately **₦995 million** in downstream revenue. However, referred customers generally did not outperform the company's highest-value organically acquired customers, raising questions about the programme's long-term profitability given the generous referral incentives.

Operational analysis identified **719 undelivered orders** and a consistent delivery duration of approximately **4–5 days** across all serviced states. While the consistency suggests standardized logistics operations, it also indicates potential operational or policy limitations that may restrict faster deliveries. The large number of long-standing undelivered orders warrants further investigation.

Overall, the company demonstrated strong commercial performance during 2025 but has opportunities to improve operational efficiency, optimise customer acquisition strategies, strengthen referral programme profitability, and enhance customer retention.

---

# Business Background

NaijaCart is a Nigerian e-commerce company specialising in smartphones, consumer electronics, home appliances, fashion products, groceries, and accessories.

At the beginning of 2025, management introduced several strategic objectives aimed at increasing market share and improving business performance.

These objectives included:

- Increasing annual revenue by 20%
- Increasing annual order volume by 15%
- Increasing customer registrations by 25%
- Acquiring at least 30% of new customers through referrals
- Reducing delivery delays by two days
- Improving customer retention through repeat purchases

At the end of the financial year, management required an evidence-based assessment to determine whether these objectives were achieved and identify areas requiring strategic improvement.

---

# Business Objectives

The analysis was designed to answer the following management questions:

- Were the company's 2025 growth targets achieved?
- Which products and categories generated the greatest business value?
- Which states should receive greater commercial investment?
- Did the referral programme create meaningful business value?
- How did customers prefer to pay?
- Which operational challenges affected customer experience?
- What opportunities exist to improve revenue, customer retention and profitability?

---

# Methodology

The analysis was performed using Microsoft SQL Server.

The workflow included:

- Data validation
- Exploratory data analysis
- Data aggregation
- Revenue calculations
- Customer segmentation
- Product performance analysis
- Referral programme evaluation
- Payment behaviour analysis
- Operational performance assessment

Advanced SQL techniques including Common Table Expressions (CTEs), Window Functions, Ranking Functions, CASE expressions, Joins, Aggregate Functions and Date Functions were used throughout the analysis.

---

# Sales Performance Analysis

The company generated total revenue of **₦2,814,692,886** during 2025.

Monthly analysis identified December as the strongest sales month by order volume, recording **1,100 units sold**, suggesting increased customer demand during the festive period.

Regional analysis showed **Niger State** generated the highest revenue of **₦247,608,341**, highlighting the state as the company's strongest performing market during the year.

<img width="1392" height="782" alt="Total Revenue and Total Orders per month" src="https://github.com/user-attachments/assets/b93608d1-fa6e-48d5-9f55-c85d8af849d6" />

<img width="891" height="733" alt="Total Revenue per top 10 states" src="https://github.com/user-attachments/assets/432feddb-f8c0-414c-959a-9c0c710b0350" />

---

# Product Performance Analysis

Product analysis revealed significant differences between products driving revenue and those driving sales volume.

The Electronics category generated the highest overall revenue (**₦692,412,063**) and was supported by four products ranked among the company's top ten revenue-generating products:

- WiFi Router
- Samsung Galaxy S23
- HP Pavilion Laptop
- Bluetooth Speaker

The company's top five products contributed only **14.72%** of total revenue, indicating low revenue concentration and a well-diversified product portfolio.

<img width="1078" height="746" alt="Top 10 products by Revenue" src="https://github.com/user-attachments/assets/5d3674ad-8943-4f09-ba09-776331067e10" />

<img width="826" height="735" alt="Top 10 products by units sold" src="https://github.com/user-attachments/assets/78576754-2eab-4ff2-8732-cf74f0934683" />

<img width="684" height="782" alt="Product Category Performance" src="https://github.com/user-attachments/assets/37f6dbad-952d-45b1-bdab-f52ed7858c37" />

---

# Customer Analysis

Although the company maintained a large customer database, only **260 customers** completed purchases during the year.

Among these customers:

- 148 purchased during more than six distinct months, indicating sustained engagement.
- Uche Olawale generated the highest customer revenue.
- Sola Eze recorded the highest Average Order Value.

The analysis suggests that customer revenue is concentrated among a relatively small number of active customers.

<img width="1237" height="588" alt="Customers by Total Revenue" src="https://github.com/user-attachments/assets/a07b74d0-d9ca-4b8c-ac1b-71734394b062" />

<img width="1444" height="231" alt="Customers with more than 6 months purchase" src="https://github.com/user-attachments/assets/c2a2b1ab-fa40-4e6e-a84d-2223f89965d3" />

---

# Referral Programme Analysis

The referral programme generated approximately **₦994,997,567** in revenue through referred customers.

**Aisha Mohammed** (Customer ID: C02) generated the highest downstream referral revenue.

Despite the programme's contribution to total revenue, referred customers generally did not outperform the company's highest-value organically acquired customers. Given that referrers receive a 30% discount based on the total value of orders placed by their referees, the long-term profitability of the programme should be reviewed.

<img width="871" height="505" alt="Total Referral Revenue" src="https://github.com/user-attachments/assets/3351e725-18e0-4588-b1f2-955cbd589eb9" />

<img width="1141" height="734" alt="Top Referrers" src="https://github.com/user-attachments/assets/73e05c18-bcce-4a37-9c26-68016e7d8786" />

---

# Payment Behaviour Analysis

Gift Cards generated the highest payment revenue, while OPay recorded the highest transaction volume.

Approximately **78.67%** of purchasing customers used more than one payment method during the year, indicating flexibility in customer payment preferences.

<img width="775" height="681" alt="Payment Method by their total revenue" src="https://github.com/user-attachments/assets/e38bc961-1ab3-4ce3-a9eb-801c19683efe" />

<img width="645" height="637" alt="Payment method by their total orders" src="https://github.com/user-attachments/assets/d7aa613d-b747-44a5-a8fc-67a02d04c6d1" />

<img width="1225" height="517" alt="Customers that transacted with more than one payment method " src="https://github.com/user-attachments/assets/1cdf78ad-8553-453e-8ca7-833c764f952d" />

---

# Operational Performance

Operational analysis identified:

- 3,281 delivered orders
- 719 undelivered orders

Delivery duration remained consistently between four and five days across all serviced states.

Although consistent delivery times may indicate standardized operational procedures, the absence of variation raises questions regarding delivery policies, warehouse distribution, or logistics practices. Additionally, undelivered orders that remained unresolved for extended periods require further investigation to determine whether stock shortages, payment verification issues, or logistics constraints contributed to non-fulfilment.

<img width="851" height="824" alt="Delivered vs Undelivered Items in 2025" src="https://github.com/user-attachments/assets/2abd6394-ee68-44b4-b24e-ee69e87720e3" />

<img width="1675" height="694" alt="Avg Shipping Delay per Month" src="https://github.com/user-attachments/assets/902dbaf0-51cb-4a64-bf95-945cd2568f36" />

---

# Key Findings

- Revenue exceeded ₦2.81 billion during 2025.
- Electronics was the highest-performing product category.
- Four Electronics products ranked among the company's top ten revenue-generating products.
- Revenue remained well diversified across products.
- Niger State generated the highest revenue.
- December recorded the highest sales volume.
- Only 260 registered customers placed orders.
- 148 customers remained active for more than six distinct months.
- Referral customers contributed approximately ₦995 million in revenue but did not consistently outperform top organic customers.
- Gift Cards generated the highest payment revenue.
- OPay remained the most frequently used payment method.
- 719 orders remained undelivered.
- Average delivery time remained approximately 4–5 days.

---

# Recommendations

### 1. Strengthen the Electronics Category

Continue investing in the Electronics category by maintaining strong supplier relationships, expanding the supplier network where appropriate, and ensuring consistent product availability.

---

### 2. Review the Referral Programme

Evaluate the financial sustainability of the current referral incentive structure. Consider introducing reward caps, tiered incentives, or performance-based rewards to improve programme profitability while maintaining customer acquisition.

---

### 3. Investigate Long-standing Undelivered Orders

Review outstanding undelivered orders to identify operational bottlenecks such as inventory shortages, payment verification delays, or logistics issues. Where appropriate, establish policies for resolving or cancelling prolonged unfulfilled orders.

---

### 4. Review Delivery Policies

Assess whether existing delivery timelines are driven by operational limitations or company policy. Where feasible, identify opportunities to reduce delivery times and improve customer experience.

---

### 5. Improve Customer Retention

Develop initiatives that encourage more registered customers to become active purchasers while maintaining engagement among customers who consistently purchase throughout the year.

---

### 6. Conduct Further Regional Analysis

Although Niger State generated the highest revenue, further investigation should determine whether this performance was driven by customer demand, marketing activities, product availability, or other commercial factors before replicating similar strategies in other states.

---

# Project Limitations

The dataset did not provide sufficient information regarding:

- Warehouse locations
- Inventory levels
- Marketing campaign performance
- Customer satisfaction
- Delivery partners
- Order cancellations
- Refunds and returns

Consequently, recommendations relating to these areas should be interpreted as opportunities for further investigation rather than definitive conclusions.

---

# Conclusion

The analysis demonstrates that NaijaCart achieved strong commercial performance during 2025, supported by diversified product revenue, healthy customer engagement among active buyers, and significant revenue generation from the Electronics category.

However, opportunities remain to improve operational efficiency, optimise the referral programme, strengthen customer retention, and investigate unresolved fulfilment challenges. Addressing these areas will position the company to improve profitability, customer satisfaction, and sustainable growth in 2026.
