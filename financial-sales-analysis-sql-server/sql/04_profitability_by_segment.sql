SELECT 
    Segment,
    SUM([Gross Sales]) AS TotalGrossSales,
    SUM(Discounts) AS TotalDiscounts,
    SUM(Sales) AS TotalTotalNetSales,
    SUM(COGS) AS TotalCOGS,
    SUM(Profit) AS TotalProfit,
    CASE WHEN SUM(Sales) = 0 THEN 0
         ELSE SUM(Profit) * 1.0 / SUM(Sales)
    END AS ProfitMargin
FROM Sheet1$
GROUP BY Segment
ORDER BY TotalTotalNetSales DESC;
