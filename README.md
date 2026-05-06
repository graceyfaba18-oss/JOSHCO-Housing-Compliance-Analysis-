JOSHCO (Johannesburg Social Housing Company)
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

## Business Model Canvas Context

Understanding JOSHCO through the Business Model Canvas framework reveals why compliance data matters beyond just numbers.

**Value Proposition**
JOSHCO's core value proposition is delivering safe, affordable rental housing to households earning between R1 500 and R15 000 per month — a segment that is priced out of the private rental market but does not qualify for fully subsidised RDP housing. Every unit delivered is a direct fulfilment of this promise.

**Customer Segments**
JOSHCO serves two distinct segments: low income tenants who need subsidised rental units, and the City of Johannesburg as a funding and accountability partner. The compliance data in this project speaks directly to the second segment — the city measures JOSHCO's performance against annual delivery and expenditure targets.

**Key Activities**
JOSHCO's key activities are property development, tenant management, and regulatory compliance. The SQL queries in this project analyse the compliance activity directly — tracking delivery rates, budget utilisation, and whether programmes meet the thresholds set by the Department of Human Settlements.

**Revenue Streams**
JOSHCO is funded through a combination of government grants, tenant rentals, and Social Housing Regulatory Authority (SHRA) subsidies. Underspending on budget — as seen in the 2020/21 COVID year — risks clawback of unspent grant funds, making expenditure compliance a financial risk, not just an administrative one.

**Key Partnerships**
The Department of Human Settlements, SHRA, the Housing Development Agency, and the City of Johannesburg are all key partners. Non-compliance with delivery targets triggers formal intervention from these bodies — exactly the kind of risk this analysis helps identify early.

**Data Analysis Connection**
The finding that Social Housing delivery in Gauteng fell to 56% of its planned target in 2020/21 is not just a statistic — within the BMC framework it represents a direct failure to deliver on the value proposition, a risk to revenue streams from grant funding, and a compliance trigger with key partners. This is the kind of insight that turns data into business decisions.

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

## Database Schema

### Table 1: housing_delivery
| Column | Description |
|---|---|
| financial_year | SA government financial year (e.g. 2023/24) |
| province | Province where units were delivered |
| programme | Social Housing, Community Rental Units, FLISP Subsidies |
| units_planned | Annual delivery target |
| units_delivered | Actual units completed |
| delivery_rate_pct | Delivery as a percentage of planned |
| beneficiaries | Number of households benefiting |
| compliance_status | Compliant, Partial Compliance, or Non-Compliant |

### Table 2: budget_expenditure
| Column | Description |
|---|---|
| financial_year | SA government financial year |
| programme | Budget programme name |
| budget_R_million | Approved budget in R millions |
| actual_R_million | Actual expenditure in R millions |
| variance_R_million | Difference between budget and actual |
| expenditure_pct | Actual as a percentage of budget |
| compliance_flag | Compliant, Within Threshold, or Non-Compliant |

---

## How to Run the SQL Queries

1. Install DB Browser for SQLite: `https://sqlitebrowser.org/dl/`
2. Click Open Database and select `joshco_housing.db`
3. Click the Execute SQL tab
4. Open `joshco_queries.sql` in Notepad
5. Copy any query and paste into DB Browser
6. Press F5 to run

---

*This project is part of the Gracey F. Data Analytics Portfolio.*
*Full portfolio: https://github.com/gracey-faba/DATA-ANALYST-PORTFOLIO*
