-- 1. Total Revenue Generated
SELECT SUM(Sales) AS Total_Revenue
FROM superstore;

-- 2. Top Performing Category
SELECT Category, SUM(Sales) AS Revenue
FROM superstore
GROUP BY Category
ORDER BY Revenue DESC;

-- 3. Top 10 Best Selling Products
SELECT "Product Name", SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY "Product Name"
ORDER BY Total_Sales DESC
LIMIT 10;

-- 4. Region with Highest Revenue
SELECT Region, SUM(Sales) AS Revenue
FROM superstore
GROUP BY Region
ORDER BY Revenue DESC;

-- 5. Monthly Sales Trend
SELECT strftime('%m', "Order Date") AS Month,
SUM(Sales) AS Monthly_Sales
FROM superstore
GROUP BY Month
ORDER BY Month;
