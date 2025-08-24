-- SECTION: Highest Volume Days

-- Aselsan
SELECT TOP 1 Date, Volume AS [Highest Volume of Aselsan Stocks in 2024]
FROM aselsan
ORDER BY Volume DESC;

-- Garanti
SELECT TOP 1 Date, Volume AS [Highest Volume of Garanti Stocks in 2024]
FROM garanti
ORDER BY Volume DESC;

-- Apple
SELECT TOP 1 Date, Volume AS [Highest Volume of Apple Stocks in 2024]
FROM apple
ORDER BY Volume DESC;

-- Tesla
SELECT TOP 1 Date, Volume AS [Highest Volume of Tesla Stocks in 2024]
FROM tesla
ORDER BY Volume DESC;
