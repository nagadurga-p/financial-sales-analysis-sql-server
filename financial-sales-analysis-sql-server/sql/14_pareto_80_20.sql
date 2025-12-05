WITH ProductSales AS (
    SELECT 
        Product,
        SUM(Sales) AS TotalSales
    FROM Sheet1$
    GROUP BY Product
),
Ranked AS (
    SELECT 
        Product,
        TotalSales,
        SUM(TotalSales) OVER (ORDER BY TotalSales DESC) AS RunningSales,
        SUM(TotalSales) OVER () AS GrandTotal
    FROM ProductSales
)
SELECT 
    Product,
    TotalSales,
    RunningSales,
    GrandTotal,
    RunningSales * 100.0 / GrandTotal AS CumulativePercent
FROM Ranked
ORDER BY TotalSales DESC;
