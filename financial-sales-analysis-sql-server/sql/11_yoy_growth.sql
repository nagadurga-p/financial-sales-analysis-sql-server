WITH yearly AS (
    SELECT 
        Year,
        SUM(Sales) AS TotalSales,
        SUM(Profit) AS TotalProfit
    FROM Sheet1$
    GROUP BY Year
)
SELECT 
    y.Year,
    y.TotalSales,
    y.TotalProfit,
    LAG(y.TotalSales) OVER (ORDER BY y.Year) AS PrevYearSales,
    LAG(y.TotalProfit) OVER (ORDER BY y.Year) AS PrevYearProfit,
    CASE WHEN LAG(y.TotalSales) OVER (ORDER BY y.Year) = 0 
         THEN NULL
         ELSE (y.TotalSales - LAG(y.TotalSales) OVER (ORDER BY y.Year)) * 100.0 /
              LAG(y.TotalSales) OVER (ORDER BY y.Year)
    END AS SalesGrowthPercent,
    CASE WHEN LAG(y.TotalProfit) OVER (ORDER BY y.Year) = 0
         THEN NULL
         ELSE (y.TotalProfit - LAG(y.TotalProfit) OVER (ORDER BY y.Year)) * 100.0 /
              LAG(y.TotalProfit) OVER (ORDER BY y.Year)
    END AS ProfitGrowthPercent
FROM yearly y;
