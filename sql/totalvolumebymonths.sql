-- SECTION: Monthly Total Volume by Company

-- Aselsan
SELECT 
    DATENAME(MONTH, Date) AS Months,
    SUM(Volume) AS [Total Volume of Aselsan Stocks]
FROM aselsan
GROUP BY DATENAME(MONTH, Date), MONTH(Date)
ORDER BY MONTH(Date);

-- Garanti
SELECT 
    DATENAME(MONTH, Date) AS Months,
    SUM(Volume) AS [Total Volume of Garanti Stocks]
FROM garanti
GROUP BY DATENAME(MONTH, Date), MONTH(Date)
ORDER BY MONTH(Date);

-- Apple
SELECT 
    DATENAME(MONTH, Date) AS Months,
    SUM(Volume) AS [Total Volume of Apple Stocks]
FROM apple
GROUP BY DATENAME(MONTH, Date), MONTH(Date)
ORDER BY MONTH(Date);

-- Tesla
SELECT 
    DATENAME(MONTH, Date) AS Months,
    SUM(Volume) AS [Total Volume of Tesla Stocks]
FROM tesla
GROUP BY DATENAME(MONTH, Date), MONTH(Date)
ORDER BY MONTH(Date);
