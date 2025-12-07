# 📦 SkyLine Logistics: Supply Chain Performance Dashboard

**Data Analyst, Global Operations Role**


## ✨ Project Overview: Solving Supply Chain Visibility

SkyLine Logistics manages multi-region distribution for several product lines. Before this project, sales and operations teams relied heavily on disparate spreadsheets, creating significant challenges in understanding key performance indicators (KPIs).

The core visibility gaps were:

* How **sales were trending** month-to-month.
* Which **product categories** were actually **profitable**.
* How **delivery performance** differed by region.
* Where **operational delays** were affecting margin.

To solve this, I designed and built an **integrated Tableau dashboard** that centralizes the most important supply-chain KPIs into a single source of truth for regional and operations managers.

---

## 🎯 Project Goals

The dashboard was specifically designed to empower managers to:

* **Track monthly sales performance** with clear trend indicators.
* **Compare profit margins** across product categories quickly.
* Understand the direct influence of **delivery times** on overall profit.
* **Quickly evaluate KPIs** across all markets without switching tools.

---

## 📊 Dashboard Contents & Design

The final dashboard features four linked, interactive views, with all filters synced across visuals for a consistent global assessment.

### 1. Monthly Sales Trend (with 3-Month Moving Average)

* **Purpose:** Shows raw monthly sales volume and utilizes a **3-Month Moving Average** to smooth fluctuations.
* **Value:** Makes it easier to spot underlying seasonal patterns and confirm stable growth or decline periods, providing a more reliable long-term trend indicator than raw data.

### 2. Profit Margin by Product Category

* **Purpose:** A chart highlighting profitability across the product portfolio.
* **Value:** Highlights which categories contribute the **most to margin** and identifies underperforming categories that require operational or pricing review due to low profitability.

### 3. Profit vs. Delivery Performance (Market Comparison)

* **Visual:** A **scatter plot** used for comparative analysis.
* **Metrics:** Compares **Average Delivery Days** (X-axis) against **Profit per Market** (Y-axis).
* **Value:** Critically useful for flagging markets where delays (high average delivery days) are showing a clear correlation with reduced profitability.

### 4. Regional KPI Summary

* **Visual:** A quick, high-level card view.
* **Metrics:** **Total Sales**, **Total Profit**, **Profit Margin %**, and **Average Delivery Days**.
* **Value:** Provides an instant snapshot of performance across all regions, filterable by market.

> **❗ PRO TIP:** Include an image here! ``
>
> **Link to Live Dashboard:** If hosted on Tableau Public, link it here: `[Link to Tableau Public Dashboard]`

---

## 🛠️ Technology Stack

| Category | Tool | Description |
| :--- | :--- | :--- |
| **Visualization** | **Tableau** | Used for dashboard build, calculated fields, and KPI visualization. |
| **Data Cleaning** | **SQL** | Utilized for cleaning, aggregating, and preparing the raw supply chain and sales data. |
| **Data Preparation** | **Excel** | Used for initial structuring, validation, and minor data preparation steps. |

---

## 💡 Key Insights & Takeaways

The centralized dashboard immediately surfaced actionable insights that were previously hidden in manual reports:

* The moving average successfully revealed a **stable, underlying upward trend** in sales that was obscured by monthly volatility in the raw data.
* There is a clear correlation: **Markets with faster delivery times generally posted stronger profit margins.**
* The margin view highlighted that a few product categories generated **strong sales volume but weak margins**, indicating they need an operational or cost review.
* Specific markets were consistently **underperforming in delivery SLAs**, which directly aligned with the markets showing the lowest profitability.

---

## 📈 Business Impact

This dashboard served as the foundation for modernizing SkyLine's operational reporting, replacing several siloed, manual reports and providing a single source of information for both sales and operations.

The key outcomes were:

* **Faster Month-End Reviews:** Review cycles were significantly reduced due to instant, centralized data access.
* **Clearer Visibility:** Teams gained clear visibility into specific performance gaps (e.g., which markets and products require intervention).
* **Confident Decision-Making:** Improved confidence in decisions related to inventory forecasting and logistics planning.
* **Better Communication:** Regional reviews now focus on data-driven conversations rather than data compilation.

---
