# financial-sales-analysis-sql-server
SQL Server analytics project using Financial Sample dataset — includes data quality checks, profitability insights, segmentation, product analysis, discount analysis, and business questions.

📊 Financial Sales Analysis — SQL Server Project

This project performs end-to-end business analysis on the Financial Sample Dataset using SQL Server.
It simulates real corporate analytics work, including:

Data quality validation

Revenue & profitability insights

Segmentation analysis

Product performance

Discount elasticity

Geographic insights

Time-series trends

Unit economics

Promotion impact

Pareto (80-20) analysis

Anomaly detection

The project is structured for clarity and reusability, and all SQL queries are included.

📁 Repository Structure
financial-sales-analysis-sql-server/
│
├── sql/                          # SQL analysis scripts
│   ├── 01_data_quality_checks.sql
│   ├── 02_distinct_values.sql
│   ├── 03_revenue_profit_overview.sql
│   ├── 04_profitability_by_segment.sql
│   ├── 05_top_products_analysis.sql
│   ├── 06_discount_band_analysis.sql
│   ├── 07_discount_vs_units_sold.sql
│   ├── 08_country_performance.sql
│   ├── 09_country_segment_matrix.sql
│   ├── 10_monthly_trend_analysis.sql
│   ├── 11_yoy_growth.sql
│   ├── 12_gross_margin_unit.sql
│   ├── 13_promotion_lift_analysis.sql
│   ├── 14_pareto_80_20.sql
│   └── 15_anomaly_detection.sql
│
├── data/
│   └── financial_sample.xlsx     # Source dataset (Excel)
│
└── README.md                     # Project documentation

🧠 Business Questions Answered

This project answers 15 real business analytics questions grouped into categories:

✅ 1. Data Quality & Profiling

Row count and missing data

Distinct Segments, Countries, Products, and Discount Bands

✅ 2. Revenue & Profitability Insights

Total financial overview

Profitability by Segment

Top products by Sales and Profit

✅ 3. Pricing, Discounts & Elasticity

Impact of discount bands on margin and units sold

Volume response to discount levels

✅ 4. Geographic Insights

Country-level financial performance

Segment × Country profit matrix

✅ 5. Time-Series Analysis

Monthly trend of Sales, Units, and Profit

Year-over-year (YoY) performance

✅ 6. Unit Economics

Margin per unit by Product

Detect products with negative margin

✅ 7. Strategic Insights

Promotion lift analysis (High vs Low discounts)

80-20 rule (Pareto Analysis)

Anomaly detection: negative profit or excessive discounts

🔧 Tools & Technologies Used

SQL Server (T-SQL)

SQL Server Management Studio (SSMS)

Excel (Data source)

GitHub for project version control and documentation

📌 Dataset Description

The dataset contains typical retail/wholesale financial metrics:

Column	Description
Segment	Customer segment
Country	Country of sale
Product	Product name
Discount Band	Discount tier applied
Units Sold	Quantity sold
Sale Price	Sales price per unit
Manufacturing Price	Cost to manufacture
Gross Sales	Revenue before discount
Discounts	Discount amount
Sales	Net revenue after discount
COGS	Cost of goods sold
Profit	Profit = Sales − COGS
Date	Transaction date
Year, Month Number, Month Name	Time attributes
🧮 Key SQL Techniques Demonstrated

This project showcases professional SQL skills:

Aggregations (SUM, COUNT, AVG)

Window functions (LAG, running totals, percentages)

Subqueries & CTEs

Profit margin, elasticity, cumulative contribution

Grouping by Segment, Product, Country, Discount Band

Monthly and yearly time-series calculations

Data anomaly detection

📈 Example Insight

Enterprise segment shows negative total profit, driven by high COGS and deep discounting.
This signals a strategic need to revise pricing or discontinue low-margin enterprise offerings.

Channel Partners have the highest profit margin (73%), despite smaller sales volume — a strong area for scaling.

Some products contribute disproportionately to total sales (Pareto effect), guiding inventory and marketing optimization.

🚀 How to Use This Repository

Clone the repo:

git clone https://github.com/nagadurga-p/financial-sales-analysis-sql-server.git


Import financial_sample.xlsx into SQL Server (use Import Wizard, OPENROWSET, or BULK INSERT).

Run each .sql file in the sql/ folder.

Review output to answer business questions inside README.

🌟 Why This Project Matters

This repository demonstrates real, job-ready SQL analytics skills used by:

Data Analysts

BI Analysts

Business Managers

Data Scientists

Financial Analysts

Recruiters and hiring managers value these kinds of analytical, structured projects.

📬 Contact / Portfolio

LinkedIn: https://www.linkedin.com/in/naga-durga-pantagolusula

GitHub: https://github.com/nagadurga-p

Email: nagadurgapantagolusula@gmail.com

Feel free to explore, comment, or connect — I’m always open to feedback and collaboration.
