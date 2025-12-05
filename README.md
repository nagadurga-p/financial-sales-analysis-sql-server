# 📊 Financial Sales Data Exploratory Data Analysis (EDA) using SQL Server

## 📌 Project Overview
This project performs detailed exploratory data analysis (EDA) on a global financial sales dataset using SQL Server. The aim is to extract meaningful business insights related to revenue trends, profitability, product performance, discount elasticity, geographic operations, and customer segments.

All queries, scripts, and analysis are written using **T-SQL on SQL Server**.

---

## 🛠️ Tools & Technologies
- **Database:** SQL Server
- **Interface:** SQL Server Management Studio (SSMS)
- **Dataset Format:** Excel (imported into SQL Server)
- **Version Control:** GitHub
- **SQL Techniques Used:** Window functions, aggregations, analytical joins, CTEs

---

## 📂 Dataset Overview
The dataset consists of transactional product financial data with the following metrics:

- Segment
- Country
- Product
- Discount Band
- Units Sold
- Sale Price
- Manufacturing Price
- Gross Sales
- Discounts
- Sales (Net)
- COGS
- Profit
- Date
- Month Number
- Month Name
- Year

---

## 🔍 Analysis Performed

### ✔ Revenue & Profitability Insights
- Total revenue and discount impacts
- Profitability across customer segments
- Product-wise financial performance

### ✔ Pricing & Discount Elasticity
- Discount band impact on revenue and margin
- Average vs total units sold by discount category

### ✔ Geography & Operational Insights
- Country-level profitability
- Segment vs Country revenue matrix

### ✔ Time-Series Analysis
- Monthly sales trends
- Year-over-year revenue & margin growth

### ✔ Unit Economics
- Average margin per unit by product
- Identify loss-making product categories

### ✔ Strategic Insights
- Promotion uplift (high discount vs low)
- Pareto (80/20 rule for product contribution)
- Anomaly detection: unusually high discount or negative profit events

---

# 📜 SQL Query Examples

## **Profitability by Segment**
```sql
SELECT 
    Segment,
    SUM(Sales) AS TotalSales,
    SUM(Profit) AS TotalProfit,
    CASE WHEN SUM(Sales) = 0 THEN 0
         ELSE SUM(Profit) * 1.0 / SUM(Sales)
    END AS ProfitMargin
FROM Sheet1$
GROUP BY Segment
ORDER BY TotalSales DESC;
```

## **Top Products by Profit**
```sql
SELECT TOP 5
    Product,
    SUM(Profit) AS TotalProfit,
    SUM(Sales) AS TotalSales,
    SUM([Units Sold]) AS TotalUnitsSold
FROM Sheet1$
GROUP BY Product
ORDER BY TotalProfit DESC;
```

## **Discount Band Performance**
```sql
SELECT
    [Discount Band],
    SUM([Units Sold]) AS TotalUnits,
    SUM(Sales) AS TotalSales,
    SUM(Profit) AS TotalProfit
FROM Sheet1$
GROUP BY [Discount Band]
ORDER BY TotalUnits DESC;
```

---

# 📊 Key Findings & Insights

- **Government and Midmarket segments deliver strong profitability**, while **Enterprise is loss-making** due to high COGS and discounts.
- **Channel Partners achieve extremely high profit margins (70%+)**, showing strong potential for scaling.
- **High discount bands increase unit volume**, but margins decline, indicating elasticity.
- **80/20 rule observed** — a small number of products contribute the majority of revenue.
- **Some products show negative unit margins**, highlighting inefficiencies or pricing problems.
- **Geographic variance observed**, indicating market prioritization opportunities.

---

# 📁 Repository Structure

```
financial-sales-analysis-sql-server/
│
├── sql/
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
│   └── financial_sample.xlsx
│
└── README.md
```

---

# 🚀 How to Use

1. Clone the repository:
   ```sh
   git clone https://github.com/nagadurga-p/financial-sales-analysis-sql-server.git
   ```
2. Import the Excel dataset into SQL Server (using Import Wizard or OPENROWSET).
3. Execute SQL scripts inside the `sql/` directory.
4. Explore results and business insights.

---

# 🌱 Future Enhancements
- Power BI or Tableau dashboards
- Automated financial KPI reporting
- Predictive analytics for forecasting revenue
- Customer segmentation using machine learning

---

# 📧 Contact

- **Name:** Naga Durga Pantagolusula  
- **Email:** nagadurgapantagolusula@gmail.com  
- **LinkedIn:** https://www.linkedin.com/in/naga-durga-pantagolusula  
- **GitHub:** https://github.com/nagadurga-p  

💡 *Feedback, contributions, and improvements are welcome!*
