-- SECTION: Highest Close Price by Company

-- Aselsan
SELECT TOP 1 
    Date, 
    Closedata AS [Highest Close of Aselsan Stocks in 2024]
FROM aselsan
ORDER BY Closedata DESC;

-- Garanti
SELECT TOP 1 
    Date, 
    Closedata AS [Highest Close of Garanti Stocks in 2024]
FROM garanti
ORDER BY Closedata DESC;

-- Apple
SELECT TOP 1 
    Date, 
    Closedata AS [Highest Close of Apple Stocks in 2024]
FROM apple
ORDER BY Closedata DESC;

-- Tesla
SELECT TOP 1 
    Date, 
    Closedata AS [Highest Close of Tesla Stocks in 2024]
FROM tesla
ORDER BY Closedata DESC;
