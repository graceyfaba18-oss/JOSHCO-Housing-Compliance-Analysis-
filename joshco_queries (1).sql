-- ================================================================
-- PROJECT 3: JOSHCO — Johannesburg Social Housing Company
-- Title:     Social Housing Delivery and Compliance Analysis
-- Author:    Gracey F.
-- Tools:     SQLite | DB Browser for SQLite
-- Data:      Department of Human Settlements Annual Performance Reports
--            City of Johannesburg Housing Development Reports
-- Source:    https://www.dhs.gov.za | https://www.thehda.co.za
-- ================================================================


-- Q1: Overall housing delivery performance by financial year
SELECT
    financial_year,
    SUM(units_planned)                              AS total_planned,
    SUM(units_delivered)                            AS total_delivered,
    ROUND(SUM(units_delivered)*100.0/SUM(units_planned),1) AS overall_delivery_pct,
    SUM(beneficiaries)                              AS total_beneficiaries
FROM housing_delivery
GROUP BY financial_year
ORDER BY financial_year;


-- Q2: Compliance status breakdown — how many programmes are compliant?
SELECT
    financial_year,
    compliance_status,
    COUNT(*)                                        AS programme_count,
    SUM(units_planned)                              AS units_planned,
    SUM(units_delivered)                            AS units_delivered
FROM housing_delivery
GROUP BY financial_year, compliance_status
ORDER BY financial_year, compliance_status;


-- Q3: Which programme consistently underperforms delivery targets?
SELECT
    programme,
    COUNT(*)                                        AS years_tracked,
    ROUND(AVG(delivery_rate_pct),1)                 AS avg_delivery_rate_pct,
    MIN(delivery_rate_pct)                          AS worst_year_pct,
    MAX(delivery_rate_pct)                          AS best_year_pct,
    SUM(units_planned)                              AS total_planned,
    SUM(units_delivered)                            AS total_delivered,
    SUM(units_planned)-SUM(units_delivered)         AS total_shortfall
FROM housing_delivery
GROUP BY programme
ORDER BY avg_delivery_rate_pct ASC;


-- Q4: COVID-19 impact on housing delivery (2020/21 vs surrounding years)
SELECT
    financial_year,
    programme,
    units_planned,
    units_delivered,
    delivery_rate_pct,
    compliance_status,
    CASE
        WHEN financial_year='2020/21' THEN 'COVID-19 Year'
        WHEN financial_year='2019/20' THEN 'Pre-COVID'
        ELSE 'Post-COVID Recovery'
    END                                             AS period
FROM housing_delivery
WHERE province='Gauteng'
ORDER BY programme, financial_year;


-- Q5: Budget expenditure compliance by programme
SELECT
    financial_year,
    programme,
    budget_R_million,
    actual_R_million,
    variance_R_million,
    expenditure_pct,
    compliance_flag,
    CASE
        WHEN expenditure_pct >= 95 THEN 'Excellent'
        WHEN expenditure_pct >= 85 THEN 'Satisfactory'
        WHEN expenditure_pct >= 75 THEN 'Needs Improvement'
        ELSE 'Non-Compliant'
    END                                             AS performance_rating
FROM budget_expenditure
ORDER BY financial_year, expenditure_pct ASC;


-- Q6: Total budget vs actual spend per year
SELECT
    financial_year,
    ROUND(SUM(budget_R_million),1)                  AS total_budget_R_million,
    ROUND(SUM(actual_R_million),1)                  AS total_actual_R_million,
    ROUND(SUM(variance_R_million),1)                AS total_variance_R_million,
    ROUND(SUM(actual_R_million)*100/SUM(budget_R_million),1) AS overall_expenditure_pct,
    SUM(CASE WHEN compliance_flag='Non-Compliant' THEN 1 ELSE 0 END) AS non_compliant_programmes
FROM budget_expenditure
GROUP BY financial_year
ORDER BY financial_year;


-- Q7: Programmes that were non-compliant on budget in any year
SELECT
    programme,
    financial_year,
    budget_R_million,
    actual_R_million,
    variance_R_million,
    expenditure_pct,
    compliance_flag
FROM budget_expenditure
WHERE compliance_flag='Non-Compliant'
ORDER BY expenditure_pct ASC;


-- Q8: Gauteng vs Western Cape delivery performance comparison
SELECT
    province,
    financial_year,
    SUM(units_planned)                              AS planned,
    SUM(units_delivered)                            AS delivered,
    ROUND(SUM(units_delivered)*100.0/SUM(units_planned),1) AS delivery_pct
FROM housing_delivery
GROUP BY province, financial_year
ORDER BY province, financial_year;
