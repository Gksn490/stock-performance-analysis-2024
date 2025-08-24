-- SECTION: Lowest Volume by Company

-- Aselsan
SELECT TOP 1 
    Date AS Date, 
    Volume AS [Lowest Volume of Aselsan Stocks in 2024]
FROM aselsan
ORDER BY Volume ASC;

-- Garanti
SELECT TOP 1 
    Date AS Date, 
    Volume AS [Lowest Volume of Garanti Stocks in 2024]
FROM garanti
ORDER BY Volume ASC;

-- Apple
SELECT TOP 1 
    Date AS Date, 
    Volume AS [Lowest Volume of Apple Stocks in 2024]
FROM apple
ORDER BY Volume ASC;

-- Tesla
SELECT TOP 1 
    Date AS Date, 
    Volume AS [Lowest Volume of Tesla Stocks in 2024]
FROM tesla
ORDER BY Volume ASC;
