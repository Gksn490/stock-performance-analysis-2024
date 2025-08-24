-- SECTION: Lowest Close Price by Company

-- Aselsan
SELECT TOP 1 
    Date, 
    Closedata AS [Lowest Close of Aselsan Stocks in 2024]
FROM aselsan
ORDER BY Closedata ASC;

-- Garanti
SELECT TOP 1 
    Date, 
    Closedata AS [Lowest Close of Garanti Stocks in 2024]
FROM garanti
ORDER BY Closedata ASC;

-- Apple
SELECT TOP 1 
    Date, 
    Closedata AS [Lowest Close of Apple Stocks in 2024]
FROM apple
ORDER BY Closedata ASC;

-- Tesla
SELECT TOP 1 
    Date, 
    Closedata AS [Lowest Close of Tesla Stocks in 2024]
FROM tesla
ORDER BY Closedata ASC;
