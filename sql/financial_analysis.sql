-- ================================
-- Financial Performance Analysis
-- ================================

-- 1. Overall sales and profit
SELECT
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM cleaned_financial_data;

-- 2. Profit by segment
SELECT
    segment,
    SUM(profit) AS total_profit
FROM cleaned_financial_data
GROUP BY segment
ORDER BY total_profit DESC;

-- 3. High-risk vs low-risk count
SELECT
    risk_flag,
    COUNT(*) AS record_count
FROM cleaned_financial_data
GROUP BY risk_flag;

-- 4. Average profit by risk category
SELECT
    risk_flag,
    AVG(profit) AS avg_profit
FROM cleaned_financial_data
GROUP BY risk_flag;

-- 5. High-risk segments
SELECT
    segment,
    COUNT(*) AS high_risk_count
FROM cleaned_financial_data
WHERE risk_flag = 'High Risk'
GROUP BY segment
ORDER BY high_risk_count DESC;
