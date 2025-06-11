# 🍕 Pizza Sales Analysis Dashboard

Welcome to the **Pizza Sales Analysis Project**, a complete end-to-end business intelligence solution using **MySQL**, **Excel**, and **data visualization** to derive actionable insights from pizza order data. This project focuses on analyzing a pizza store's sales performance to uncover trends, optimize decisions, and present insights through an interactive Excel dashboard.

---

## 📌 Project Overview

This project transforms raw pizza sales data into a structured database and interactive dashboard, showcasing key business metrics and trends. The process includes:

- Creating a relational database in **MySQL Workbench**
- Running advanced **SQL queries** for KPI generation
- Connecting the database to **Excel via ODBC**
- Building charts, slicers, and a fully interactive **Excel Dashboard**

---

## 🧱 Database Design

The `pizza_sales` table was created with the following fields:

- `pizza_id` (Primary Key)
- `order_id`
- `pizza_name_id`
- `quantity`
- `order_date`
- `order_time`
- `unit_price`
- `total_price`
- `pizza_size`
- `pizza_category`
- `pizza_ingredients`
- `pizza_name`

```sql
CREATE TABLE pizza_sales (
  pizza_id INT PRIMARY KEY,
  order_id INT,
  pizza_name_id VARCHAR(50),
  quantity INT,
  order_date DATE,
  order_time TIME,
  unit_price FLOAT,
  total_price FLOAT,
  pizza_size VARCHAR(50),
  pizza_category VARCHAR(50),
  pizza_ingredients VARCHAR(200),
  pizza_name VARCHAR(50)
);

📊 SQL Analysis

The following KPIs were calculated using SQL:

Total Revenue

Total Orders

Total Pizzas Sold

Average Order Value

Average Pizzas per Order

Daily & Hourly Sales Trends

Sales by Category & Size

Top & Bottom Performing Pizzas

Sample KPI Query:

SELECT SUM(ROUND(total_price, 2)) AS Total_Revenue FROM pizza_sales;

🔗 Excel Integration

Data was imported into Excel using the MySQL ODBC Connector:

Install MySQL ODBC driver.

Set up a DSN pointing to Pizza_DB.

In Excel: Data > Get Data > From Other Sources > From ODBC.

This allowed real-time data refresh and seamless pivot table construction.

🧩 Data Transformation in Excel
Additional transformations included:

Created a new Order Day column using:

=TEXT([@[order_date]], "dddd")
Structured data into PivotTables for all KPIs and visual components.

📈 Dashboard Visuals

The following charts and visuals were added to the Excel Dashboard:

📊 Column Chart: Daily Orders by Weekday

📉 Line Chart: Hourly Orders Trend

🍩 Donut Chart: % Sales by Pizza Category

🥧 Pie Chart: % Sales by Pizza Size

🔽 Funnel Chart: Quantity Sold by Category

📊 Bar Charts:

Top 5 Best-Selling Pizzas

Bottom 5 Worst-Selling Pizzas

📆 Timeline Slicer: Date-based filtering (yearly, monthly, quarterly)

🎨 Dashboard Design

The dashboard was built on a dedicated sheet using a clean and structured layout:

KPIs at the top for quick insights

Trends on the left, category breakdowns on the right

Interactive charts at the bottom

Consistent color schemes and formatting applied for professional look

📌 Key Insights

Classic pizzas lead in both revenue and volume.

Large and XL sizes dominate sales.

Friday and Saturday are peak order days.

12 PM – 2 PM and 5 PM – 8 PM are the busiest hours.

Several pizzas underperform and may require reevaluation.

🛠 Tools & Technologies
Tool	Purpose
MySQL Workbench	Database design & SQL queries
MySQL ODBC	Connecting DB to Excel
Microsoft Excel	Data analysis & visualization
SQL	Data transformation & metrics

📸 Sample Dashboard

🚀 How to Use
Clone this repository

Open the .sql file and run in MySQL Workbench

Connect Excel to your MySQL DB using ODBC

Refresh PivotTables and use the dashboard sheet for analysis

📚 Learnings

This project helped reinforce concepts in:

SQL data analysis

Excel dashboarding best practices

End-to-end BI workflow

Storytelling with data

🙌 Acknowledgment

Thanks to the creators of the dataset and the Excel + SQL community for sharing knowledge and resources that helped in shaping this project.

📬 Contact

Feel free to connect with me on LinkedIn or open an issue if you have questions!

📁 Project Files

Pizza sale Analysis.sql – SQL scripts for DB creation and KPIs

Pizza_sales_database.xlsx – Raw data + PivotTables

Pizza_sales_Dashboard.png – Dashboard snapshot

⭐ If you liked this project, don't forget to give it a star!

Let me know if you'd like this in downloadable `.md` format, or want to include links to a live portfolio or public GitHub repo!
