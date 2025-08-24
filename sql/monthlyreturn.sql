-- SECTION: Monthly Return by Company

-- Aselsan
SELECT 
    DATENAME(MONTH, Date) AS Months,
    ((MAX(Closedata) - MIN(Closedata)) / MIN(Closedata) * 100) AS [Monthly Return of Aselsan Stocks]
FROM aselsan
GROUP BY DATENAME(MONTH, Date), MONTH(Date)
ORDER BY MONTH(Date);

-- Garanti
SELECT 
    DATENAME(MONTH, Date) AS Months,
    ((MAX(Closedata) - MIN(Closedata)) / MIN(Closedata) * 100) AS [Monthly Return of Garanti Stocks]
FROM garanti
GROUP BY DATENAME(MONTH, Date), MONTH(Date)
ORDER BY MONTH(Date);

-- Apple
SELECT 
    DATENAME(MONTH, Date) AS Months,
    ((MAX(Closedata) - MIN(Closedata)) / MIN(Closedata) * 100) AS [Monthly Return of Apple Stocks]
FROM apple
GROUP BY DATENAME(MONTH, Date), MONTH(Date)
ORDER BY MONTH(Date);

-- Tesla
SELECT 
    DATENAME(MONTH, Date) AS Months,
    ((MAX(Closedata) - MIN(Closedata)) / MIN(Closedata) * 100) AS [Monthly Return of Tesla Stocks]
FROM tesla
GROUP BY DATENAME(MONTH, Date), MONTH(Date)
ORDER BY MONTH(Date);
