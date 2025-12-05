SELECT TOP 10
    Country,
    SUM(Sales) AS TotalSales,
    SUM(Profit) AS TotalProfit,
    SUM([Units Sold]) AS TotalUnits,
    CASE WHEN SUM(Sales) = 0 THEN 0
         ELSE SUM(Profit) * 1.0 / SUM(Sales)
    END AS ProfitMargin
FROM Sheet1$
GROUP BY Country
ORDER BY TotalSales DESC;
