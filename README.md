# ⭐ Product Usage & Engagement Analysis (SQL)
This project analyzes product usage and user engagement metrics to help understand user behavior, retention, and feature adoption. It is built using SQL on `users.csv` and `events.csv` datasets.

## 📌 Overview
This project analyzes user activity data to understand product engagement, feature adoption, and retention using SQL. It simulates a real-world product analytics use case in a technology company.

## 🎯 Project Objective
- Measure **Daily Active Users (DAU)** and **Monthly Active Users (MAU)**  
- Calculate **product stickiness** using DAU/MAU ratio  
- Analyze **feature adoption** across users  
- Track **retention** and **time to first action** to evaluate onboarding  
- Provide **business insights and recommendations** for product growth  

## 🎯 Business Objective
- Measure user engagement (DAU / MAU)
- Identify high-impact features
- Analyze user retention
- Evaluate onboarding effectiveness

## 📂 Project Structure

```text
product-usage-engagement-analysis-sql/
├── data/
│   ├── users.csv
│   └── events.csv
├── sql/
│   ├── dataadd.sql
│   ├── dau_mau.sql
│   ├── dau_mau_ratio.sql
│   ├── avg_dau_mau_monthly.sql
│   ├── plan_usage.sql
│   ├── mauplan_type.sql
│   ├── feature_usage.sql
│   ├── retention_30day.sql
│   └── time_to_first_action.sql
├── insights/
│   └── business_insights.md
├── assets/
│   └── flowchart.png
├── README.md
└── FILES.md
 ```
 
## 🗂 Data Description
### 1️⃣ Users Table (`users.csv`): signup information
| Column | Description |
|--------|-------------|
| user_id | Unique identifier for each user |
| signup_date | Date the user signed up |
| plan_type | User plan (Free / Pro) |

### 2️⃣ Events Table (`events.csv`): user activity logs
| Column | Description |
|--------|-------------|
| user_id | User performing the event |
| event_date | Date of the event |
| event_type | Type of event (feature usage, page visit, etc.) |
---

## 🛠 Tools
- SQL (JOINs, CTEs, Window Functions)

## 📊 Key Metrics
- Daily Active Users (DAU)
- Monthly Active Users (MAU)
- Feature usage
- Retention rate
- Time to first action

## 🗃 SQL Files Included

| File | Description |
|------|-------------|
| `dau.sql` | Daily Active Users (DAU) |
| `mau.sql` | Monthly Active Users (MAU) |
| `dau_mau_ratio.sql` | DAU / MAU ratio (daily stickiness) |
| `avg_dau_mau_monthly.sql` | Average DAU / MAU per month |
| `feature_usage.sql` | Feature usage counts and adoption analysis |
| `retention_30day.sql` | 30-day retention calculation |
| `time_to_first_action.sql` | Onboarding: time to first action per user |

> All SQL queries are written for MySQL and ready to run on the provided CSV data imported into a database.
---
🖼 Explanation

Input: events.csv (and users.csv for onboarding/plan info)

Step 1: Calculate DAU and MAU (dau.sql, mau.sql)

Step 2: Measure stickiness (dau_mau_ratio.sql, avg_dau_mau_monthly.sql)

Step 3: Analyze feature usage (feature_usage.sql)

Step 4: Measure retention (retention_30day.sql)

Step 5: Evaluate onboarding (time_to_first_action.sql)

Output: Business insights and recommendations (business_insights.md)

## 🔍 Key Insights

1. **User Engagement**
   - DAU fluctuates daily; engagement is event-driven  
   - MAU shows steady growth, indicating consistent user adoption  

2. **Product Stickiness**
   - DAU/MAU ratio indicates **moderate stickiness**  
   - Users return periodically but not daily  

3. **Feature Adoption**
   - Some core features drive the majority of interactions  
   - Low-usage features may need promotion or redesign  

4. **Retention**
   - Users engaging early are more likely to stay beyond 30 days  
   - Drop-offs indicate potential onboarding friction  

5. **Onboarding**
   - Shorter time to first action correlates with higher retention  
   - Delayed first action is a risk factor for churn

## 👔 Role Fit
Data Analyst | Product Analyst | BI Analyst
