## Telco Customer Churn Analysis
SQL + Power BI analysis of a telecom customer churn dataset containing 7,043 customers.

Dashboard Preview
<img width="1314" height="709" alt="churn_rate_powerbi" src="https://github.com/user-attachments/assets/5125722b-5dd4-4666-a3d1-7654e808259c" />

The Power BI dashboard provides a high-level view of customer churn and the key factors associated with it.

The dashboard includes:
- Overall churn KPIs
- Churn rate by contract type
- Churn rate by customer tenure
- Churn rate by payment method

These visuals help highlight the main drivers of churn and support retention-focused business decisions.

## Project Overview
This project analyzes customer churn data from a telecom company to identify the main factors associated with customer loss. The goal was to simulate a real-world analytics workflow by cleaning raw data in SQL and building a Power BI dashboard to explore churn by contract type, customer tenure, and payment method.

The analysis included cleaning and transforming the raw dataset, creating SQL queries and views for reporting, and visualizing key churn metrics in Power BI. The final dashboard highlights overall churn, churn by contract type, churn by customer tenure, and churn by payment method to support retention-focused business decisions.

## Business Questions
 - What contract types have the hughest churn?
 - What customer tenure groups experience the most churn?
 - What payment methods are associated with the highest churn?

## Tools Used
 - PostgreSQL
 - SQL
 - Power BI
 - GitHub

 ## Dataset
Customer churn dataset containing 7,043 customers from a telecommunications company (Telco).

 Key columns include:
 - contract
 - tenure
 - payment_method
 - monthly_charges
 - internet_service
 - tech_support / online_security

  ## Data Cleaning Steps
 - Renamed columns to snake_case format for consistency
 - Trimmed whitespace from the total_charges column to remove hidden spaces that prevented numeric conversion.
 - Converted total_charges from text to numeric using CAST(NULLIF(TRIM(totalcharges), '') AS NUMERIC).
 - Replaced blank values in total_charges with NULL to avoid type conversion errors.
 - Created a binary churn indicator churn_flag where:
    - Yes = 1
    - No = 0
 - Created a clean analytical table (churn_clean) to separate raw data from analysis-ready data.

 ## SQL Analysis
SQL queries and views were developed to calculate churn metrics and analyze customer characteristics associated with churn. These included:

 - Overall churn KPIs (total customers, churn count, churn rate)
 - Contract type churn comparison
 - Customer tenure lifecycle analysis
 - Payment method churn patterns

## Key Insights

 - The dataset contains 7,043 customers, with 1,869 customers churning, resulting in an overall churn rate of 26.54%.
 - Month-to-month contracts have the highest churn rate (42.7%), while customers on two-year contracts have very low churn (2.8%), suggesting longer contracts strongly correlate with retention.
 - Customer tenure is a major churn driver. Nearly 48% of customers in their first year churn, while churn drops to under 10% for customers with more than four years of tenure.
 - Electronic check customers churn the most (45.3%), compared to 15-17% churn for customers using automatic payment methods, indicating billing behavior may influence retention.

 ## Business Recommendations
The analysis shows that churn is heavily concentrated among month-to-month customers and those in their first year with the company. Nearly half of customers in their first year leave the service, which suggests the early customer experience is a critical retention period. Improving onboarding, offering early loyalty incentives, or providing proactive customer support during the first year could help reduce churn.

Contract length also appears strongly tied to retention. Customers on one-year and two-year contracts churn far less than those on month-to-month plans. Encouraging customers to move to longer contracts through promotional pricing or bundled service discounts could help stabilize long-term customer retention.

Payment behavior also stands out. Customers paying with electronic checks churn at significantly higher rates than those using automatic payment methods. Promoting automatic billing options such as credit card or bank transfer could help reduce payment friction and improve retention.

These findings highlight contract structure, early customer lifecycle, and billing behavior as the most important areas for reducing customer churn.

## Project Structure

 - 01_data_raw - Raw dataset
 - 02_sql - SQL scripts for cleaning and analysis
 - 03_powerbi - Power BI dashboard
 - 04_screenshots - Dashboard images
 - README.md - Project documentation
 - project_notes.md - Analysis notes and workflow
