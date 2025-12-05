-- Negative Profit or very high discount ratio
SELECT
    [Date],
    Product,
    Sales,
    Discounts,
    Profit,
    CASE WHEN Sales = 0 THEN NULL ELSE Discounts * 1.0 / Sales END AS DiscountRatio
FROM Sheet1$
WHERE 
    Profit < 0
    OR (Sales > 0 AND Discounts * 1.0 / Sales > 0.5)
ORDER BY [Date];
