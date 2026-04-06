
# Electronics Sales Analytics Dashboard (Power BI)

## Project Overview

This project demonstrates an end-to-end Business Intelligence workflow using Microsoft Power BI to clean, model, analyze, and visualize electronics retail sales data.

The dataset contained real-world issues such as inconsistent values, missing entries, and multiple currencies. The goal was to transform the raw data into an interactive dashboard that supports business decision-making.

---

## Objectives

The project answers key business questions:

* Which products generate the most revenue and profit?
* Which regions perform best?
* How do shipping costs affect profitability?
* Which sales representatives perform best?
* What customer patterns exist across the dataset?

---

## Dataset Features

The dataset includes:

**Transaction Data**

* OrderID
* OrderDate
* DeliveryDate
* SalesAmount
* Quantity
* Discount
* ShippingCost
* Profit
* Currency

**Customer Data**

* CustomerName
* CustomerAge
* City
* Country
* Region

**Product Data**

* ProductName
* Category

**Operations Data**

* SalesRep
* PaymentMethod

---

## Data Cleaning (Power Query)

Performed the following preprocessing steps:

* Standardized data types (dates, numeric fields)
* Fixed spelling inconsistencies in product and currency values
* Handled missing and placeholder entries (e.g., N/A)
* Standardized currencies into USD for consistent reporting

---

## Data Modeling

Implemented a **star schema model**:

**Fact Table**

* Sales transactions (orders, revenue, profit, quantity)

**Dimension Tables**

* Customers
* Products
* Sales Representatives
* Payment Methods
* Date table

This structure improves filtering performance and reporting scalability.

---

## Key Measures (DAX)

Created core business KPIs:

* Total Revenue (USD)
* Total Profit
* Profit Margin
* Total Orders
* Total Quantity Sold

These measures support executive-level reporting.

---

## Dashboard Features

The Power BI report includes:

* KPI cards (Revenue, Profit, Margin, Orders, Quantity)
* Sales by product and category
* Regional performance analysis
* Sales representative performance
* Sales trend over time
* Payment method distribution
* Shipping cost vs profitability analysis

Interactive slicers allow filtering by:

* Region
* Category
* SalesRep
* PaymentMethod
* Date

---

## Insights Generated

The dashboard helps stakeholders:

* identify top-performing products
* compare regional profitability
* evaluate operational costs
* analyze customer behavior
* monitor sales performance trends

---

## Tools Used

* Microsoft Power BI Desktop
* Power Query
* DAX
* Excel (source dataset)

---

## Project Outcome

This project demonstrates the full analytics workflow:

**data cleaning → modeling → KPI creation → visualization → business insight generation**

The final dashboard converts raw transactional data into actionable insights for an electronics retail business.
