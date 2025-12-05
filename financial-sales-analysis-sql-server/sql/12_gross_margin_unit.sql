SELECT
    Product,
    AVG([Sale Price] - COGS) AS AvgMarginPerUnit,
    MIN([Sale Price] - COGS) AS MinMarginPerUnit,
    MAX([Sale Price] - COGS) AS MaxMarginPerUnit
FROM Sheet1$
GROUP BY Product
ORDER BY AvgMarginPerUnit ASC;
