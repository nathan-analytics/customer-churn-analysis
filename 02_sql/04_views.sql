CREATE VIEW vw_churn_kpi AS
SELECT
    COUNT(*) AS total_customers,
    SUM(churn_flag) AS churned_customers,
    ROUND(AVG(churn_flag) * 100, 2) AS churn_rate_pct
FROM churn_clean;

CREATE VIEW vw_churn_by_contract AS
SELECT
    contract,
    COUNT(*) AS total_customers,
    SUM(churn_flag) AS churned_customers,
    ROUND(AVG(churn_flag) * 100, 2) AS churn_rate_pct
FROM churn_clean
GROUP BY contract;

CREATE VIEW vw_churn_by_tenure AS
SELECT
    CASE
        WHEN tenure < 12 THEN '0-1 year'
        WHEN tenure < 24 THEN '1-2 years'
        WHEN tenure < 48 THEN '2-4 years'
        ELSE '4+ years'
    END AS tenure_group,
    COUNT(*) AS total_customers,
    SUM(churn_flag) AS churned_customers,
    ROUND(AVG(churn_flag) * 100, 2) AS churn_rate_pct
FROM churn_clean
GROUP BY tenure_group;

CREATE VIEW vw_churn_by_payment AS
SELECT
    payment_method,
    COUNT(*) AS total_customers,
    SUM(churn_flag) AS churned_customers,
    ROUND(AVG(churn_flag) * 100, 2) AS churn_rate_pct
FROM churn_clean
GROUP BY payment_method;