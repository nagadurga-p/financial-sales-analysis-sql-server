SELECT
    SUM([Gross Sales]) AS TotalGrossSales,
    SUM(Discounts) AS TotalDiscounts,
    SUM(Sales) AS TotalNetSales,
    SUM(COGS) AS TotalCOGS,
    SUM(Profit) AS TotalProfit
FROM Sheet1$;
