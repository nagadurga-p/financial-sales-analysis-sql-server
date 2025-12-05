SELECT
    [Discount Band],
    AVG([Units Sold]) AS AvgUnitsSoldPerRecord,
    SUM([Units Sold]) AS TotalUnitsSold
FROM Sheet1$
GROUP BY [Discount Band]
ORDER BY AvgUnitsSoldPerRecord DESC;
