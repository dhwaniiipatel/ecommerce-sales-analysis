-- Top 10 products by sales
SELECT "Product Name", SUM(Sales) AS TotalSales
FROM orders
GROUP BY "Product Name"
ORDER BY TotalSales DESC
LIMIT 10;

-- Sales by region
SELECT Region, SUM(Sales) AS TotalSales
FROM orders
GROUP BY Region
ORDER BY TotalSales DESC;

-- Monthly sales trend
SELECT EXTRACT(MONTH FROM "Order Date") AS OrderMonth, SUM(Sales) AS TotalSales
FROM orders
GROUP BY OrderMonth
ORDER BY OrderMonth;

-- Sales by category
SELECT Category, SUM(Sales) AS TotalSales
FROM orders
GROUP BY Category
ORDER BY TotalSales DESC;

-- Top 10 customers by sales
SELECT "Customer Name", SUM(Sales) AS TotalSales
FROM orders
GROUP BY "Customer Name"
ORDER BY TotalSales DESC
LIMIT 10;
