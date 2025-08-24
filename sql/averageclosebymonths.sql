-- SECTION: Average Monthly Close Price by Company

-- Aselsan
SELECT 
    DATENAME(MONTH, Date) AS Months,
    AVG(Closedata) AS [Average Close of Aselsan Stocks]
FROM aselsan
GROUP BY DATENAME(MONTH, Date), MONTH(Date)
ORDER BY MONTH(Date);

-- Garanti
SELECT 
    DATENAME(MONTH, Date) AS Months,
    AVG(Closedata) AS [Average Close of Garanti Stocks]
FROM garanti
GROUP BY DATENAME(MONTH, Date), MONTH(Date)
ORDER BY MONTH(Date);

-- Apple
SELECT 
    DATENAME(MONTH, Date) AS Months,
    AVG(Closedata) AS [Average Close of Apple Stocks]
FROM apple
GROUP BY DATENAME(MONTH, Date), MONTH(Date)
ORDER BY MONTH(Date);

-- Tesla
SELECT 
    DATENAME(MONTH, Date) AS Months,
    AVG(Closedata) AS [Average Close of Tesla Stocks]
FROM tesla
GROUP BY DATENAME(MONTH, Date), MONTH(Date)
ORDER BY MONTH(Date);
