SELECT
    Country,
    Segment,
    SUM(Sales) AS TotalSales,
    SUM(Profit) AS TotalProfit
FROM Sheet1$
GROUP BY Country, Segment
ORDER BY Country, Segment;
