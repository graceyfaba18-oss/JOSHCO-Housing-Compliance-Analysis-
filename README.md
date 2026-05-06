# Project 3 — JOSHCO (Johannesburg Social Housing Company)
## Social Housing Delivery and Compliance Analysis

**Author:** Gracey F.
**Tools:** SQL (SQLite) | Microsoft Excel | DB Browser for SQLite
**Data Source:** Department of Human Settlements Annual Performance Reports | City of Johannesburg Housing Development Reports
**Source URL:** https://www.dhs.gov.za | https://www.thehda.co.za

---

## Business Context

JOSHCO is the Johannesburg Social Housing Company, a City of Johannesburg entity responsible for delivering and managing affordable rental housing for low to medium income households. I completed a compliance internship at JOSHCO where I worked on tender documents, procurement compliance reports, and regulatory submissions.

This project analyses housing delivery performance and budget expenditure compliance across financial years 2019/20 to 2023/24, using real figures from Department of Human Settlements Annual Performance Reports. The analysis is directly relevant to the compliance reporting work I performed during my internship.

---

## What This Project Analyses

- Overall housing unit delivery against annual planned targets
- Compliance status classification by programme and year
- Which programmes consistently underperform delivery targets
- COVID-19 impact on housing delivery in 2020/21
- Budget expenditure compliance by programme
- Gauteng versus Western Cape delivery performance comparison

---

## Key Findings

The 2020/21 financial year shows the most significant delivery shortfalls across all programmes due to COVID-19 construction halts and procurement delays, with Social Housing delivery in Gauteng falling to 56% of its planned target — down from 77% the prior year. This represents a direct compliance breach against the Department of Human Settlements annual performance targets.

Social Housing consistently underperforms relative to Community Rental Units and FLISP Subsidies across all years, driven by land availability constraints and lengthy municipal planning approval processes. Budget expenditure shows a similar pattern, with Social Housing recording non-compliant expenditure rates in 2020/21 when actual spend fell to 71.2% of the approved budget.

---

## Project Structure

```
project3_joshco/
├── data/
│   ├── joshco_housing.db           — SQLite database (2 tables)
│   ├── housing_delivery.csv        — Housing delivery by programme and province
│   └── budget_expenditure.csv      — Budget vs actual expenditure
├── sql/
│   └── joshco_queries.sql          — 8 compliance and performance SQL queries
├── excel/
│   └── JOSHCO_Compliance_Dashboard.xlsx  — Excel dashboard with compliance flags
└── README.md
```

---

## How to Run the SQL Queries

1. Install DB Browser for SQLite: https://sqlitebrowser.org/dl/
2. Open joshco_housing.db
3. Click Execute SQL tab
4. Copy any query from joshco_queries.sql and paste
5. Press F5 to run

---

*This project is part of the Gracey F. Data Analytics Portfolio.*
*Full portfolio: https://github.com/gracey-faba/DATA-ANALYST-PORTFOLIO*
