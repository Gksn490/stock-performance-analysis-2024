-- SECTION: Daily Change by Company

-- Aselsan
SELECT 
    Date AS Date, 
    CASE 
        WHEN LAG(Closedata) OVER (ORDER BY Date) IS NULL THEN '-' 
        ELSE CAST(LAG(Closedata) OVER (ORDER BY Date) AS NVARCHAR(20)) 
    END AS [Previous Close],
    Closedata AS [Close],
    CASE 
        WHEN LAG(Closedata) OVER (ORDER BY Date) IS NULL THEN '-'
        ELSE CAST(ROUND(((Closedata - LAG(Closedata) OVER (ORDER BY Date)) / 
                        LAG(Closedata) OVER (ORDER BY Date) * 100),2) AS NVARCHAR(20))
    END AS [Daily Change of Aselsan Stocks]
FROM aselsan;

-- Garanti
SELECT 
    Date AS Date, 
    CASE 
        WHEN LAG(Closedata) OVER (ORDER BY Date) IS NULL THEN '-' 
        ELSE CAST(LAG(Closedata) OVER (ORDER BY Date) AS NVARCHAR(20)) 
    END AS [Previous Close],
    Closedata AS [Close],
    CASE 
        WHEN LAG(Closedata) OVER (ORDER BY Date) IS NULL THEN '-'
        ELSE CAST(ROUND(((Closedata - LAG(Closedata) OVER (ORDER BY Date)) / 
                        LAG(Closedata) OVER (ORDER BY Date) * 100),2) AS NVARCHAR(20))
    END AS [Daily Change of Garanti Stocks]
FROM garanti;

-- Apple
SELECT 
    Date AS Date, 
    CASE 
        WHEN LAG(Closedata) OVER (ORDER BY Date) IS NULL THEN '-' 
        ELSE CAST(LAG(Closedata) OVER (ORDER BY Date) AS NVARCHAR(20)) 
    END AS [Previous Close],
    Closedata AS [Close],
    CASE 
        WHEN LAG(Closedata) OVER (ORDER BY Date) IS NULL THEN '-'
        ELSE CAST(ROUND(((Closedata - LAG(Closedata) OVER (ORDER BY Date)) / 
                        LAG(Closedata) OVER (ORDER BY Date) * 100),2) AS NVARCHAR(20))
    END AS [Daily Change of Apple Stocks]
FROM apple;

-- Tesla
SELECT 
    Date AS Date, 
    CASE 
        WHEN LAG(Closedata) OVER (ORDER BY Date) IS NULL THEN '-' 
        ELSE CAST(LAG(Closedata) OVER (ORDER BY Date) AS NVARCHAR(20)) 
    END AS [Previous Close],
    Closedata AS [Close],
    CASE 
        WHEN LAG(Closedata) OVER (ORDER BY Date) IS NULL THEN '-'
        ELSE CAST(ROUND(((Closedata - LAG(Closedata) OVER (ORDER BY Date)) / 
                        LAG(Closedata) OVER (ORDER BY Date) * 100),2) AS NVARCHAR(20))
    END AS [Daily Change of Tesla Stocks]
FROM tesla;
