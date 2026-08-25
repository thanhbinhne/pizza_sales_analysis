# Pizza Sales Analysis

## Project Overview

This project analyzes pizza sales data to evaluate overall sales performance, identify ordering trends, understand customer preferences, and determine the best- and worst-performing pizza products.

SQL Server was used for data analysis and KPI calculation, while Power BI was used to build an interactive dashboard for presenting business insights.

---

## Project Objectives

The main objectives of this project are to:

* Evaluate overall sales performance.
* Analyze daily and monthly ordering trends.
* Identify the most popular pizza categories and sizes.
* Determine the best- and worst-selling pizzas.
* Compare pizza performance based on revenue, quantity sold, and total orders.
* Provide useful insights to support business decisions.

---

## Tools Used

* SQL Server
* Power BI
* DAX
* Power Query

---

## Key Performance Indicators

| KPI                      |       Result |
| ------------------------ | -----------: |
| Total Revenue            | **$817.86K** |
| Average Order Value      |   **$38.31** |
| Total Pizzas Sold        |   **49,574** |
| Total Orders             |   **21,350** |
| Average Pizzas per Order |     **2.32** |

---

## Analysis Performed

### Sales Trends

The analysis examines:

* Daily trend of total orders
* Monthly trend of total orders

The dashboard shows that **Friday recorded the highest number of orders**, while **July had the highest monthly order volume**.

### Sales by Pizza Category

Pizza sales were analyzed across four categories:

* Classic
* Supreme
* Chicken
* Veggie

The **Classic category generated the highest share of total sales**, accounting for approximately **26.91% of revenue**.

### Sales by Pizza Size

Sales were analyzed across different pizza sizes:

* Large
* Medium
* Small
* Extra Large
* XX-Large

**Large pizzas generated the largest share of total sales**, representing approximately **45.89% of revenue**.

---

## Best-Selling Pizzas

### By Revenue

The highest-revenue pizza was:

**The Thai Chicken Pizza — approximately $43.4K**

Other strong performers included:

* The Barbecue Chicken Pizza
* The California Chicken Pizza
* The Classic Deluxe Pizza
* The Spicy Italian Pizza

### By Quantity Sold

**The Classic Deluxe Pizza** had the highest sales quantity with approximately **2,453 pizzas sold**.

### By Total Orders

**The Classic Deluxe Pizza** appeared in the largest number of orders, with approximately **2,329 orders**.

---

## Worst-Selling Pizzas

### By Revenue

**The Brie Carre Pizza** generated the lowest revenue, at approximately **$11.6K**.

### By Quantity Sold

The Brie Carre Pizza recorded the lowest sales quantity, with **490 pizzas sold**.

### By Total Orders

The Brie Carre Pizza had the lowest number of orders, appearing in approximately **480 orders**.

---

## Power BI Dashboard

The dashboard was developed in Power BI to provide an interactive overview of sales performance.

It includes:

* Total Revenue
* Average Order Value
* Total Pizzas Sold
* Total Orders
* Average Pizzas per Order
* Daily Order Trends
* Monthly Order Trends
* Sales by Pizza Category
* Sales by Pizza Size
* Total Pizzas Sold by Category
* Top 5 Pizzas by Revenue
* Bottom 5 Pizzas by Revenue
* Top 5 Pizzas by Quantity
* Bottom 5 Pizzas by Quantity
* Top 5 Pizzas by Total Orders
* Bottom 5 Pizzas by Total Orders

### Interactive Dashboard

[View Interactive Power BI Dashboard](YOUR_POWER_BI_LINK)

### Power BI File

The original Power BI file is also available in this repository:

[Download Power BI Dashboard](Pizza_Sales_Dashboard.pbix)

---

## Key Insights

* The business generated approximately **$817.86K in total revenue** from **21,350 orders**.
* Customers purchased an average of **2.32 pizzas per order**.
* **Friday** was the busiest day in terms of order volume.
* **July** recorded the highest number of monthly orders.
* The **Classic category** contributed the largest share of revenue at approximately **26.91%**.
* **Large pizzas** generated approximately **45.89% of total sales revenue**.
* The **Thai Chicken Pizza** generated the highest revenue.
* The **Classic Deluxe Pizza** performed best in both quantity sold and total orders.
* The **Brie Carre Pizza** was the weakest-performing product across revenue, quantity sold, and total orders.

---

## Business Recommendations

Based on the analysis:

* Maintain sufficient inventory for high-demand pizza sizes, especially Large pizzas.
* Prioritize high-performing pizzas such as The Thai Chicken Pizza and The Classic Deluxe Pizza in promotional campaigns.
* Review the pricing, positioning, or recipe of The Brie Carre Pizza due to its consistently low performance.
* Increase staffing and inventory availability during high-demand periods, especially on Fridays.
* Use monthly sales trends to improve inventory planning and promotional scheduling.

---

## SQL Analysis

SQL Server was used to calculate KPIs and perform sales analysis.

The SQL analysis includes:

* Total Revenue
* Average Order Value
* Total Pizzas Sold
* Total Orders
* Average Pizzas per Order
* Daily Order Trend
* Monthly Order Trend
* Percentage of Sales by Pizza Category
* Percentage of Sales by Pizza Size
* Top 5 Pizzas by Revenue
* Bottom 5 Pizzas by Revenue
* Top 5 Pizzas by Quantity
* Bottom 5 Pizzas by Quantity
* Top 5 Pizzas by Total Orders
* Bottom 5 Pizzas by Total Orders

Stored procedures were also created to analyze pizza sales by month and quarter.

The SQL queries used in this project are available here:

[View SQL Queries](pizza_sales_sql.sql)

---

## Repository Files

```text
pizza_sales_analysis/
│
├── README.md
├── Pizza_Sales_Dashboard.pbix
├── pizza_sales_sql.sql
└── SQL_Queries.docx
```

---

## Author

**Nguyen Thanh Binh**

Aspiring Data Analyst

SQL | Power BI | DAX | Power Query | Data Analysis | Data Visualization
