CREATE database superstore;

# 1.Total Sales by region

SELECT region, SUM(sales) AS total_sales
FROM sales
GROUP BY region;

# 2. Top 5 profitable products

SELECT category, SUM(profit) AS total_sales
FROM sales 
GROUP BY category
ORDER BY total_profit desc
LIMIT 5;

# 3.Monthly sales trend

SELECT MONTH(order_date) AS month,
       SUM(sales) AS total_sales
FROM sales 
GROUP BY month
ORDER BY month;

# 4. Highest discount impact

SELECT discount, AVG(profit)
from sales
group by discount;