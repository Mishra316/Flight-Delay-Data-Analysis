# 📊 SQL Scripts - Flight Delay Analysis

This folder contains SQL scripts used to analyze flight delay data from a relational database.

## 📂 Files Overview

### 🔧 `create_tables.sql`
Defines the schema to store flight delay data:
- `flights`: Stores flight-level delay details
- `airlines`: Stores airline names and codes
- `airports`: Stores airport names and codes
- `dates`: Stores time dimensions (optional for warehouse-style analysis)

### 📥 `insert_sample_data.sql`
Sample data to test queries and visualizations. Useful for local or offline testing.

### 📁 `queries/`
Reusable SQL queries for different types of analysis:
- **airline_delay_summary.sql**: Summarize delay metrics per airline
- **airport_delay_summary.sql**: Rank airports by total delay time
- **monthly_trends.sql**: Trends in delays by month/year
- **delay_type_comparison.sql**: Compare delay types (e.g., NAS vs Weather)
- **best_airline_performance.sql**: Find airlines with minimal average delays

---

## 🛠️ How to Use

1. Run `create_tables.sql` to initialize the database schema.
2. (Optional) Load data using `insert_sample_data.sql`.
3. Run queries from the `queries/` folder to generate insights.

💡 These scripts were written with compatibility for **MySQL** and **PostgreSQL** in mind.
