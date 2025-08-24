# 2024 Stock Performance Analysis

**Project Overview**
- This project provides a comprehensive analysis of stock performance for ASELSAN and Garanti (BIST), as well as Apple and Tesla (NASDAQ) throughout 2024. The goal is to analyze trends, returns, volatility, and trading volumes using a combination of SQL, Excel, and Power BI.

**Data Sources**
- Historical stock data obtained from Investing.com.
- Data includes daily Open, High, Low, Close, Volume, and Daily Change (%) for all four companies.

**Tools & Workflow**
1. **Excel**: Data cleaning, preprocessing, calculation of daily changes, and preparation for SQL & Power BI.

2. **SQL**: Advanced queries for calculating:
- averageclosebymonths.sql – Calculates the average monthly closing prices.
- dailychange.sql – Computes the daily price changes.
- dailyvolatility.sql – Measures daily stock volatility.
- highestclose.sql – Finds the highest closing price within the dataset.
- highestvolume.sql – Identifies the day with the highest trading volume.
- lowestclose.sql – Finds the lowest closing price within the dataset.
- lowestvolume.sql – Identifies the day with the lowest trading volume.
- monthlyreturn.sql – Calculates the monthly returns.
- pivottables.sql – Creates pivot-style summarized tables for analysis.
- totalvolumebymonths.sql – Aggregates total trading volume by month.
- yearlyreturn.sql – Calculates yearly returns.

3. **Power BI**: Visualization of insights through:
- Cards (Yearly Return, Min/Max Close, Total Volume)
- Line charts (Average Close, Volatility)
- Column charts (Average Volume)
- Scatter chart (Monthly Return vs Avg Volume with Volatility)
- Tables summarizing monthly performance

**Highlights**
- Comparative analysis across BIST vs NASDAQ companies
- Interactive dashboards showcasing trends, extremes, and volatility
- Ready for presentation in CV or portfolio

**File Structure**
- /data       → Raw Excel data files
- /sql        → SQL query scripts
- /powerbi    → Power BI .pbix dashboards
- README.md   → Project description and overview
- LICENSE     → MIT License

**Author:**
**Yusuf Göksün**
