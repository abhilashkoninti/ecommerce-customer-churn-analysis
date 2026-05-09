E-Commerce Churn Analysis
Author: K.Abhilash
Date: May 2026

USE ecommerce_churn;
SELECT
   COUNT(*) AS total_customers,
   SUM(churn) AS churned_customers,
   ROUND(100.0 * SUM(churn) / COUNT(*),2) AS churn_rate_pct
   FROM customers;
   SELECT 
      CityTier,
      COUNT(*) AS total_customers,
      SUM(churn) AS churned,
      ROUND(100.0 * SUM(churn) / COUNT(*),2) AS churn_rate_pct
FROM customers
GROUP BY CityTier
ORDER BY churn_rate_pct DESC;      
USE ecommerce_churn;

SELECT 
    SatisfactionScore,
    COUNT(*) AS total_customers,
    SUM(Churn) AS churned,
    ROUND(100.0 * SUM(Churn) / COUNT(*), 2) AS churn_rate_pct
FROM customers
GROUP BY SatisfactionScore
ORDER BY SatisfactionScore ASC;
USE ecommerce_churn;

WITH tenure_analysis AS (
    SELECT 
        TenureGroup,
        COUNT(*) AS total_customers,
        SUM(Churn) AS churned
    FROM customers
    GROUP BY TenureGroup
)
SELECT 
    TenureGroup,
    total_customers,
    churned,
    ROUND(100.0 * churned / total_customers, 2) AS churn_rate_pct
FROM tenure_analysis
ORDER BY churn_rate_pct DESC;
SELECT
	complain,
    COUNT(*) AS total_customers,
    SUM(Churn) AS Churned,
    ROUND(100.0 * SUM(Churn) / COUNT(*),2) AS churn_rate_oct
FROM customers
GROUP BY complain
ORDER by complain;
