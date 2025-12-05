-- Top 5 Products by Net Sales
SELECT TOP 5
    Product,
    SUM(Sales) AS TotalSales,
    SUM(Profit) AS TotalProfit,
    SUM([Units Sold]) AS TotalUnitsSold
FROM Sheet1$
GROUP BY Product
ORDER BY TotalSales DESC;

-- Top 5 Products by Profit
SELECT TOP 5
    Product,
    SUM(Profit) AS TotalProfit,
    SUM(Sales) AS TotalSales,
    SUM([Units Sold]) AS TotalUnitsSold
FROM Sheet1$
GROUP BY Product
ORDER BY TotalProfit DESC;
