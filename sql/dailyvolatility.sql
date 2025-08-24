-- SECTION: Daily Volatility by Company

-- Aselsan
SELECT 
    STDEV(Closedata) AS [Daily Volatility of Aselsan Stocks]
FROM aselsan;

-- Garanti
SELECT 
    STDEV(Closedata) AS [Daily Volatility of Garanti Stocks]
FROM garanti;

-- Apple
SELECT 
    STDEV(Closedata) AS [Daily Volatility of Apple Stocks]
FROM apple;

-- Tesla
SELECT 
    STDEV(Closedata) AS [Daily Volatility of Tesla Stocks]
FROM tesla;
