SELECT 
    (SELECT COUNT(DISTINCT Segment) FROM Sheet1$) AS Segments,
    (SELECT COUNT(DISTINCT Country) FROM Sheet1$) AS Countries,
    (SELECT COUNT(DISTINCT Product) FROM Sheet1$) AS Products,
    (SELECT COUNT(DISTINCT [Discount Band]) FROM Sheet1$) AS DiscountBands;
