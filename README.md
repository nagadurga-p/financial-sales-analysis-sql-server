📊 Financial Sales Data Exploratory Data Analysis (EDA) using SQL Server
📌 Project Overview

This project performs detailed exploratory data analysis (EDA) on a global financial sales dataset using SQL Server.
The analysis focuses on revenue trends, profitability insights, discount elasticity, product performance, and geographic operations.

The goal is to extract actionable business insights, similar to what BI analysts and financial analysts deliver to management teams.

🛠️ Tools & Technologies

Database: SQL Server

Interface: SQL Server Management Studio (SSMS)

Dataset Source: Excel Import

GitHub Repository: Version control & documentation

SQL Techniques: CTEs, aggregations, window functions, profitability metrics

📂 Dataset Overview

The dataset captures financial sales transactions and product operational details across multiple markets.

Key Attributes:

Segment (Customer type)

Country (Sales geography)

Product

Discount Band (Low / Medium / High)

Units Sold

Sale Price

Manufacturing Price

Gross Sales (Before discount)

Discounts (Applied amount)

Net Sales (After discount)

COGS (Cost of goods sold)

Profit (Sales – COGS)

Date, Month, Year

🔍 Analysis Performed

Revenue & Profitability:

Total revenue, discount impact, and overall profit

Segment Insights:

Profit and margin contribution per customer segment

Top Product Lines:

Identify products with highest revenue and profitability

Discount Elasticity:

Understand how discount band affects units sold and margin

Geography Insights:

Sales and profitability performance by country

Time-Series Analysis:

Monthly sales trends, unit growth, and YoY performance

Unit Economics:

Compute gross margin per unit and detect loss-making products

Strategic Analysis:

Pareto rule (80/20) and promotional uplift insights

Anomaly Detection:

Detect negative profit or excessive discount scenarios

📜 SQL Query Examples

Profitability by Segment:
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

Top Products by Profit:
SELECT TOP 5
    Product,
    SUM(Profit) AS TotalProfit,
    SUM(Sales) AS TotalSales,
    SUM([Units Sold]) AS TotalUnitsSold
FROM Sheet1$
GROUP BY Product
ORDER BY TotalProfit DESC;

Discount Band Performance:
SELECT
    [Discount Band],
    SUM([Units Sold]) AS TotalUnits,
    SUM(Sales) AS TotalSales,
    SUM(Profit) AS TotalProfit
FROM Sheet1$
GROUP BY [Discount Band]
ORDER BY TotalUnits DESC;

📊 Key Findings & Insights

Government and Midmarket segments showed strongest profitability, while Enterprise had negative profit due to high cost and discounting.

Channel Partners achieved exceptionally high margins (70%+), making them ideal for targeted growth strategies.

High discount bands increased unit volume, but often hurt profitability.

Certain products are significantly more profitable, supporting an 80/20 Pareto distribution.

Some countries generate consistently higher net revenue, indicating market opportunities.

📁 Repository Structure

financial-sales-analysis-sql-server/
│
├── sql/
│   ├── 01_data_quality_checks.sql
│   ├── 02_distinct_values.sql
│   ├── ...
│   └── 15_anomaly_detection.sql
│
├── data/
│   └── financial_sample.xlsx
│
└── README.md

🚀 How to Use

Clone this repository:

git clone https://github.com/nagadurga-p/financial-sales-analysis-sql-server.git


Import financial_sample.xlsx into SQL Server

Execute the SQL files inside the sql/ folder sequentially

Analyze results and explore additional business opportunities

📌 Future Enhancements

Power BI visualization dashboards

Predictive analytics models for forecasting revenue

Customer segmentation using clustering

Automated KPI reporting

📧 Contact

If you would like to collaborate or provide suggestions, feel free to reach out:

Name: Naga Durga Pantagolusula

Email: nagadurgapantagolusula@gmail.com

GitHub: https://github.com/nagadurga-p

LinkedIn: https://www.linkedin.com/in/naga-durga-pantagolusula

💡 Contributions, feedback, and issues are welcome!
