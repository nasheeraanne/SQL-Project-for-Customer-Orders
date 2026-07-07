# SQL-Project-for-Customer-Orders

Customer Total Spending Analysis
Project Overview
This SQL query calculates the total amount spent by each customer by combining order information with product prices. It uses a Common Table Expression (CTE) to aggregate spending for every customer.

Objective
Determine how much each customer has spent across all their orders.
SQL Features Used
•	Common Table Expression (CTE)
•	JOIN
•	SUM() aggregation
•	GROUP BY

Analysis Outcome
The query calculates the total spending for each customer by multiplying the quantity purchased by the selling price of each product and summing these values across all orders.
Key Findings
•	Each customer is assigned a single total_spending value representing their cumulative purchases.

•	Customers with multiple orders have their spending aggregated into one total.

•	The result identifies the customers who contribute the most revenue.

•	The output can be used to rank customers based on their purchasing value.
Business Insights

•	Identify high-value customers for loyalty or VIP programs.

•	Segment customers into spending tiers (e.g., Premium, Regular, Low Value).

•	Analyze customer purchasing behavior for targeted marketing campaigns.

•	Measure customer lifetime spending for retention strategies.

•	Support revenue reporting by showing each customer's financial contribution.

SQL Concepts Demonstrated
This query demonstrates several fundamental SQL concepts commonly used in data analysis and reporting.
1. ✅Common Table Expression (CTE)
•	Uses a CTE (WITH customer_spending AS) to create a temporary result set.
•	Improves query readability and makes complex logic easier to maintain.
•	Allows the aggregated results to be referenced in the final SELECT statement.
2. ✅INNER JOIN
•	Joins the orders and products tables using product_id.
•	Combines order quantities with product selling prices to calculate spending.
•	Ensures only matching records from both tables are included.
3. ✅ Aggregate Function (SUM)
•	Uses SUM() to calculate the total spending for each customer.
•	Aggregates multiple order records into a single spending value.
4. ✅Arithmetic Operations
•	Multiplies quantity by selling_price to calculate the value of each order.
•	Demonstrates performing calculations directly within a SQL query.
5. ✅ GROUP BY
•	Groups records by customer_id.
•	Produces one summarized result for each customer.
6. ✅Column Aliasing
•	Assigns a meaningful name (total_spending) to the calculated aggregate value.
•	Improves readability and makes the output easier to interpret.
7. ✅Table Aliasing
•	Uses table aliases (ord and prod) to simplify references and improve query readability.
8. ✅Data Aggregation
•	Converts detailed transactional data into summarized customer-level insights.
•	Supports reporting and business intelligence analysis.
9. ✅ Result Reusability
•	Separates the aggregation logic from the final query using a CTE, making it easier to extend with additional filtering, ranking, or analysis in subsequent queries.
Notes
•	Every product_id in the orders table should exist in the products table.
•	Customers without any orders will not appear in the result.
•	The query returns one record per customer.

Tools Used : MySQL Workbench
