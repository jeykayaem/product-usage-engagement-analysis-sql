# Product Usage & Engagement Analysis – SQL Files Overview

This document describes all SQL files included in the repository, their purpose, and business relevance.  

---

## 1️⃣ `dau.sql` – Daily Active Users
- **Purpose:** Counts unique users active each day.
- **Details:** Aggregates `events.csv` by `event_date`, calculates distinct `user_id`.
- **Business Use:** Measures daily engagement and detects spikes or drops.

---

## 2️⃣ `mau.sql` – Monthly Active Users
- **Purpose:** Counts unique users active per month.
- **Details:** Converts `event_date` to month and aggregates distinct `user_id`.
- **Business Use:** Tracks overall adoption trends and provides baseline for stickiness.

---

## 3️⃣ `dau_mau_ratio.sql` – DAU / MAU Ratio
- **Purpose:** Calculates daily stickiness.
- **Details:** Joins DAU and MAU by month, calculates ratio.
- **Business Use:** Measures habit formation and user engagement frequency.

---

## 4️⃣ `avg_dau_mau_monthly.sql` – Average DAU/MAU per Month
- **Purpose:** Smooths daily fluctuations into monthly average stickiness.
- **Details:** Groups daily DAU/MAU ratios by month and calculates average.
- **Business Use:** Tracks month-over-month engagement trends.

---

## 5️⃣ `feature_usage.sql` – Feature Adoption Analysis
- **Purpose:** Counts usage of each product feature.
- **Details:** Filters events for `feature%`, aggregates usage, optionally segmented by plan or month.
- **Business Use:** Identifies high-value and low-value features to guide product strategy.

---

## 6️⃣ `retention_30day.sql` – 30-Day Retention
- **Purpose:** Measures how many users return within 30 days of first activity.
- **Details:** Identifies first activity per user, counts users with events in first 30 days, optional cohort analysis.
- **Business Use:** Highlights retention, onboarding effectiveness, and early churn risks.

---

## 7️⃣ `time_to_first_action.sql` – Onboarding / Time to First Action
- **Purpose:** Measures how quickly users perform their first meaningful action.
- **Details:** Joins `users.csv` with `events.csv`, calculates days between signup and first event, optional segmentation by plan or signup month.
- **Business Use:** Evaluates onboarding efficiency and correlates early action with retention.

---

## 🔗 Summary

- **Flow:** `dau.sql` → `mau.sql` → `dau_mau_ratio.sql` → `avg_dau_mau_monthly.sql` → `feature_usage.sql`, `retention_30day.sql`, `time_to_first_action.sql` → `business_insights.md`  
- All files are **MySQL-ready** and designed to generate actionable insights on **engagement, retention, and onboarding**.  
- This file serves as a **quick reference for recruiters or interviewers**.

