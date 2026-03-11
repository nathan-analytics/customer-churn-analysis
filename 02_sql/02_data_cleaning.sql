-- Drop existing table if it exists
DROP TABLE IF EXISTS churn_clean;

-- Create cleaned table
CREATE TABLE churn_clean AS
SELECT
    customerid AS customer_id,
    gender,
    seniorcitizen AS senior_citizen,
    partner,
    dependents,
    tenure,
    phoneservice AS phone_service,
    multiplelines AS multiple_lines,
    internetservice AS internet_service,
    onlinesecurity AS online_security,
    onlinebackup AS online_backup,
    deviceprotection AS device_protection,
    techsupport AS tech_support,
    streamingtv AS streaming_tv,
    streamingmovies AS streaming_movies,
    contract,
    paperlessbilling AS paperless_billing,
    paymentmethod AS payment_method,
    monthlycharges AS monthly_charges,
CAST(NULLIF(TRIM(totalcharges), '') AS NUMERIC) AS total_charges    churn,
    CASE
        WHEN churn = 'Yes' THEN 1
        ELSE 0
    END AS churn_flag
FROM churn_raw;

-- Validation checks
SELECT COUNT(*) AS row_count
FROM churn_clean;

SELECT COUNT(*) AS null_total_charges
FROM churn_clean
WHERE total_charges IS NULL;