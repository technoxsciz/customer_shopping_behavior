# 🛍️ Customer Shopping Behavior Analysis

An end-to-end data analysis project exploring customer shopping patterns using Python, PostgreSQL, and Power BI.

---

## 📌 Project Overview

This project analyzes a customer shopping behavior dataset to uncover insights about revenue distribution, product performance, subscription impact, and customer segmentation. The full pipeline goes from raw CSV data through Python cleaning, PostgreSQL storage, SQL analysis, and finally a Power BI dashboard.

---

## 🔑 Key Findings

* Male customers generated **2x more revenue** than female customers ($157,890 vs $75,191)
* Subscribed and non-subscribed customers spend almost identically on average ($59.49 vs $59.87)  **subscription status does not predict spend**
* **80% of customers are Loyal** (11+ previous purchases), with only 83 classified as New indicating a highly retained customer base
* Express shipping customers spend slightly more on average ($60.48) than Standard shipping customers ($58.46)
* **Hat** is the most discount-driven product — 50% of all Hat purchases involved a discount
* Gloves lead in customer satisfaction with the highest average rating of **3.86**
* **Young Adults contribute the most revenue** ($62,143), outpacing Seniors by over $6,000
* Among repeat buyers (5+ purchases), non-subscribers still outnumber subscribers **2,518 vs 958** suggesting loyalty programs are underleveraged
* Jewelry, Blouse, and Sandals are the top sellers in their respective categories 
  (Accessories, Clothing, Footwear). Outerwear is dominated by Jacket and Coat

---

## 🗂️ Project Structure

```
customer_shopping_behavior/
│
├── customer_behavior.ipynb          # Data cleaning & PostgreSQL pipeline
├── customer_shopping_behavior.csv   # Raw dataset (3,900 customers)
│
├── 1_revenue_by_gender.sql
├── 2_discount_users_above_avg_spend.sql
├── 3_top_5_products_by_avg_rating.sql
├── 4_standard_vs_express_shipping.sql
├── 5_subscriber_vs_non-subscriber_spend.sql
├── 6_highest_discount_purchase_%_product.sql
├── 7_customer_segmentation.sql
├── 8_top_3_items_per_category.sql
├── 9_repeat_buyers_with_subscription.sql
├── 10_revenue_by_age_group.sql
│
└── customer_behavior.pbix           # Power BI dashboard
```

---

## 🔧 Tools & Technologies

| Layer | Tool |
|---|---|
| Data Cleaning | Python (Pandas) |
| Database | PostgreSQL |
| ORM / Connection | SQLAlchemy |
| SQL Analysis | PostgreSQL (10 queries) |
| Dashboard | Power BI |

---

## 🐍 Python Pipeline (Jupyter Notebook)

The notebook handles all data preparation before loading into PostgreSQL:

- **Null handling** — missing `review_rating` values filled with the category-level median
- **Column renaming** — standardized to lowercase with underscores
- **Feature engineering** — `age_group` segmentation and `purchase_frequency_days` mapped from frequency labels
- **Duplicate column validation** — confirmed `promo_code_used` == `discount_applied` before dropping
- **Credentials** — database credentials managed via `.env` file (not committed to GitHub)

---

## 🗄️ SQL Analysis — Business Questions

| # | Question | Techniques Used |
|---|---|---|
| 1 | Revenue by gender | GROUP BY, SUM |
| 2 | Discount users above average spend | Subquery, WHERE |
| 3 | Top 5 products by average rating | GROUP BY, AVG, LIMIT |
| 4 | Standard vs Express shipping spend | Filtering, AVG |
| 5 | Subscriber vs non-subscriber spend | GROUP BY, AVG, SUM |
| 6 | Products with highest discount purchase % | Conditional aggregation (CASE WHEN) |
| 7 | Customer segmentation (New / Returning / Loyal) | CTE, CASE WHEN |
| 8 | Top 3 items per category | CTE, Window Function (ROW_NUMBER, PARTITION BY) |
| 9 | Repeat buyers and subscription likelihood | WHERE filter, GROUP BY |
| 10 | Revenue by age group | GROUP BY, SUM |

---

## 📊 Power BI Dashboard

The dashboard includes:

- **KPI Cards** — Total customers (3.9K), Average purchase amount ($59.76), Average rating (3.75)
- **Donut Chart** — Subscription status breakdown (Yes 27% / No 73%)
- **Bar Charts** — Sales and revenue by category
- **Horizontal Bar Charts** — Sales and revenue by age group
- **Slicers** — Filter by subscription status, gender, category, and shipping type

---

## 📁 Dataset

- **Source:** Customer Shopping Behavior Dataset (Kaggle)
- **Rows:** 3,900 customers
- **Key columns:** `age`, `gender`, `category`, `item_purchased`, `purchase_amount`, `review_rating`, `subscription_status`, `previous_purchases`, `shipping_type`, `discount_applied`, `frequency_of_purchases`

---

## ⚙️ Setup

1. Clone the repository
2. Create a `.env` file in the root folder:
```
DB_USER=your_username
DB_PASSWORD=your_password
DB_HOST=localhost
DB_PORT=5432
DB_NAME=your_database_name
```
3. Install dependencies:
```bash
pip install pandas sqlalchemy psycopg2-binary python-dotenv
```
4. Run `customer_behavior.ipynb` to clean data and load into PostgreSQL
5. Run SQL queries against the `customer` table
6. Open `customer_behavior.pbix` in Power BI Desktop

---

## 👤 Author

**Sworaj**
CS Graduate | Aspiring Data Analyst
GitHub: [technoxsciz](https://github.com/technoxsciz)
