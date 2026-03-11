-- Overall churn rate
SELECT
    COUNT(*) AS total_customers,
    SUM(churn_flag) AS churned_customers,
    ROUND(AVG(churn_flag) * 100, 2) AS churn_rate_pct
FROM churn_clean;

-- Average Monthly Charges By Churn
SELECT
    churn,
    AVG(monthly_charges) AS avg_monthly_charges
FROM churn_clean
GROUP BY churn;