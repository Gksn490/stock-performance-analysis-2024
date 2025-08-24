-- SECTION: Yearly Return by Company

-- Aselsan
SELECT 
    ((MAX(Closedata) - MIN(Closedata)) / MIN(Closedata) * 100) AS [Yearly Return of Aselsan Stocks]
FROM aselsan;

-- Garanti
SELECT 
    ((MAX(Closedata) - MIN(Closedata)) / MIN(Closedata) * 100) AS [Yearly Return of Garanti Stocks]
FROM garanti;

-- Apple
SELECT 
    ((MAX(Closedata) - MIN(Closedata)) / MIN(Closedata) * 100) AS [Yearly Return of Apple Stocks]
FROM apple;

-- Tesla
SELECT 
    ((MAX(Closedata) - MIN(Closedata)) / MIN(Closedata) * 100) AS [Yearly Return of Tesla Stocks]
FROM tesla;
