SELECT
    [Discount Band],
    SUM([Units Sold]) AS TotalUnitsSold,
    AVG([Sale Price]) AS AvgSalePrice,
    AVG([Manufacturing Price]) AS AvgManufacturingPrice,
    SUM(Sales) AS TotalSales,
    SUM(Profit) AS TotalProfit,
    CASE WHEN SUM(Sales) = 0 THEN 0
         ELSE SUM(Profit) * 1.0 / SUM(Sales)
    END AS AvgMargin
FROM Sheet1$
GROUP BY [Discount Band]
ORDER BY TotalUnitsSold DESC;
