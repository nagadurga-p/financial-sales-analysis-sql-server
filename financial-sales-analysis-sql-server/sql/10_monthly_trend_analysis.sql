SELECT
    Year,
    [Month Number],
    [Month Name],
    SUM(Sales) AS TotalSales,
    SUM(Profit) AS TotalProfit,
    SUM([Units Sold]) AS TotalUnits
FROM Sheet1$
GROUP BY Year, [Month Number], [Month Name]
ORDER BY Year, [Month Number];
