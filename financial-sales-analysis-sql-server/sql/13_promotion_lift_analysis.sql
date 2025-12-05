-- Change the product name here:
DECLARE @Product NVARCHAR(100) = 'Paseo';

SELECT
    Year,
    [Month Number],
    [Month Name],
    SUM([Units Sold]) AS TotalUnits,
    SUM(Sales) AS TotalSales,
    SUM(CASE WHEN [Discount Band] = 'High' THEN 1 ELSE 0 END) AS HighDiscountEvents
FROM Sheet1$
WHERE Product = @Product
GROUP BY Year, [Month Number], [Month Name]
ORDER BY Year, [Month Number];
