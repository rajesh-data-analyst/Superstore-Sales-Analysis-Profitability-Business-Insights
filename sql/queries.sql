-- SQL queries will be added here
-- Total Sales & Profit
SELECT SUM(Sales) AS total_sales, SUM(Profit) AS total_profit
FROM superstore;

-- Profit by Category
SELECT Category, SUM(Profit) AS profit
FROM superstore
GROUP BY Category;

-- Loss making Sub-Categories
SELECT Sub_Category, SUM(Profit) AS profit
FROM superstore
GROUP BY Sub_Category
ORDER BY profit ASC;

-- Discount vs Profit
SELECT Discount, AVG(Profit) AS avg_profit
FROM superstore
GROUP BY Discount
ORDER BY Discount;
