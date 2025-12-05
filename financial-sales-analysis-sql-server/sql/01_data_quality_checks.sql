SELECT 
    COUNT(*) AS TotalRows,
    SUM(CASE WHEN [Date] IS NULL THEN 1 ELSE 0 END) AS MissingDate,
    SUM(CASE WHEN [Units Sold] IS NULL THEN 1 ELSE 0 END) AS MissingUnitsSold,
    SUM(CASE WHEN [Sale Price] IS NULL THEN 1 ELSE 0 END) AS MissingSalePrice,
    SUM(CASE WHEN Profit IS NULL THEN 1 ELSE 0 END) AS MissingProfit
FROM Sheet1$;
