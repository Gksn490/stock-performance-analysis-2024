-- SECTION: Pivot Tables

-- AvgOpen Pivot
WITH AvgOpenPivot AS (
    SELECT MonthName, MonthNum, [Aselsan] AS AvgOpen_Aselsan, [Garanti] AS AvgOpen_Garanti, 
           [Apple] AS AvgOpen_Apple, [Tesla] AS AvgOpen_Tesla
    FROM (
        SELECT 
            DATENAME(MONTH, Date) AS MonthName,
            MONTH(Date) AS MonthNum,
            'Aselsan' AS Company,
            AVG(Opendata) AS Value
        FROM aselsan
        GROUP BY DATENAME(MONTH, Date), MONTH(Date)
        UNION ALL
        SELECT DATENAME(MONTH, Date), MONTH(Date), 'Garanti', AVG(Opendata) FROM garanti GROUP BY DATENAME(MONTH, Date), MONTH(Date)
        UNION ALL
        SELECT DATENAME(MONTH, Date), MONTH(Date), 'Apple', AVG(Opendata) FROM apple GROUP BY DATENAME(MONTH, Date), MONTH(Date)
        UNION ALL
        SELECT DATENAME(MONTH, Date), MONTH(Date), 'Tesla', AVG(Opendata) FROM tesla GROUP BY DATENAME(MONTH, Date), MONTH(Date)
    ) AS SourceTable
    PIVOT (
        MAX(Value) FOR Company IN ([Aselsan],[Garanti],[Apple],[Tesla])
    ) AS PivotTable
)
SELECT * FROM AvgOpenPivot ORDER BY MonthNum;



-- AvgClose Pivot
WITH AvgClosePivot AS (
    SELECT MonthName, MonthNum, [Aselsan] AS AvgClose_Aselsan, [Garanti] AS AvgClose_Garanti, 
           [Apple] AS AvgClose_Apple, [Tesla] AS AvgClose_Tesla
    FROM (
        SELECT 
            DATENAME(MONTH, Date) AS MonthName,
            MONTH(Date) AS MonthNum,
            'Aselsan' AS Company,
            AVG(Closedata) AS Value
        FROM aselsan
        GROUP BY DATENAME(MONTH, Date), MONTH(Date)
        UNION ALL
        SELECT DATENAME(MONTH, Date), MONTH(Date), 'Garanti', AVG(Closedata) FROM garanti GROUP BY DATENAME(MONTH, Date), MONTH(Date)
        UNION ALL
        SELECT DATENAME(MONTH, Date), MONTH(Date), 'Apple', AVG(Closedata) FROM apple GROUP BY DATENAME(MONTH, Date), MONTH(Date)
        UNION ALL
        SELECT DATENAME(MONTH, Date), MONTH(Date), 'Tesla', AVG(Closedata) FROM tesla GROUP BY DATENAME(MONTH, Date), MONTH(Date)
    ) AS SourceTable
    PIVOT (
        MAX(Value) FOR Company IN ([Aselsan],[Garanti],[Apple],[Tesla])
    ) AS PivotTable
)
SELECT * FROM AvgClosePivot ORDER BY MonthNum;



-- TotalVolume Pivot
WITH TotalVolumePivot AS (
    SELECT MonthName, MonthNum, [Aselsan] AS Volume_Aselsan, [Garanti] AS Volume_Garanti,
           [Apple] AS Volume_Apple, [Tesla] AS Volume_Tesla
    FROM (
        SELECT 
            DATENAME(MONTH, Date) AS MonthName,
            MONTH(Date) AS MonthNum,
            'Aselsan' AS Company,
            SUM(Volume) AS Value
        FROM aselsan
        GROUP BY DATENAME(MONTH, Date), MONTH(Date)
        UNION ALL
        SELECT DATENAME(MONTH, Date), MONTH(Date), 'Garanti', SUM(Volume) FROM garanti GROUP BY DATENAME(MONTH, Date), MONTH(Date)
        UNION ALL
        SELECT DATENAME(MONTH, Date), MONTH(Date), 'Apple', SUM(Volume) FROM apple GROUP BY DATENAME(MONTH, Date), MONTH(Date)
        UNION ALL
        SELECT DATENAME(MONTH, Date), MONTH(Date), 'Tesla', SUM(Volume) FROM tesla GROUP BY DATENAME(MONTH, Date), MONTH(Date)
    ) AS SourceTable
    PIVOT (
        MAX(Value) FOR Company IN ([Aselsan],[Garanti],[Apple],[Tesla])
    ) AS PivotTable
)
SELECT * FROM TotalVolumePivot ORDER BY MonthNum;



-- MonthlyReturn Pivot
WITH MonthlyReturnPivot AS (
    SELECT MonthName, MonthNum, [Aselsan] AS Return_Aselsan, [Garanti] AS Return_Garanti,
           [Apple] AS Return_Apple, [Tesla] AS Return_Tesla
    FROM (
        SELECT 
            DATENAME(MONTH, Date) AS MonthName,
            MONTH(Date) AS MonthNum,
            'Aselsan' AS Company,
            ((MAX(Closedata)-MIN(Closedata))/MIN(Closedata)*100) AS Value
        FROM aselsan
        GROUP BY DATENAME(MONTH, Date), MONTH(Date)
        UNION ALL
        SELECT DATENAME(MONTH, Date), MONTH(Date), 'Garanti', ((MAX(Closedata)-MIN(Closedata))/MIN(Closedata)*100) FROM garanti GROUP BY DATENAME(MONTH, Date), MONTH(Date)
        UNION ALL
        SELECT DATENAME(MONTH, Date), MONTH(Date), 'Apple', ((MAX(Closedata)-MIN(Closedata))/MIN(Closedata)*100) FROM apple GROUP BY DATENAME(MONTH, Date), MONTH(Date)
        UNION ALL
        SELECT DATENAME(MONTH, Date), MONTH(Date), 'Tesla', ((MAX(Closedata)-MIN(Closedata))/MIN(Closedata)*100) FROM tesla GROUP BY DATENAME(MONTH, Date), MONTH(Date)
    ) AS SourceTable
    PIVOT (
        MAX(Value) FOR Company IN ([Aselsan],[Garanti],[Apple],[Tesla])
    ) AS PivotTable
)
SELECT * FROM MonthlyReturnPivot ORDER BY MonthNum;
