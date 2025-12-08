# SkyLine Logistics: Supply Chain Performance Dashboard

**My Role:** Data Analyst, Global Operations

## 🛑 The Pain Point: Why I Built This

Before this project, SkyLine's sales and operations teams were essentially flying blind, piecing together insights from a stack of separate Excel sheets. This wasn't just slow—it made strategic decision-making impossible. We couldn't answer fundamental questions like:

* Are sales trending up or is it just noise?
* Which product lines are actually **making us money** (vs. just generating revenue)?
* How do our regional delivery delays bite into our final profit margin?

My goal was to shut down the spreadsheet chaos and deliver a single, undeniable source of truth.

---

## 🛠️ The Solution: Centralizing KPIs in Tableau

I built a core, interactive Tableau dashboard to integrate all crucial supply-chain and sales KPIs. This wasn't just about putting numbers on a screen; it was about connecting delivery performance directly to profit, which the teams couldn't do before.

### Key Dashboard Views

The dashboard focuses on four views, all linked and filtered dynamically:

1.  **Sales Trend with Moving Average:** The raw monthly sales data was too volatile. I implemented a **3-Month Moving Average** to cut through the noise and show the executive team the *true* stable, upward trend we were actually riding.
2.  **Profit Margin by Category:** A stark comparison that immediately calls out the "busy work"—product categories that have high sales volume but abysmal profit margins. This drives action.
3.  **Profit vs. Delivery Performance:** This is the most crucial view. It’s a scatter plot that proves the business case: **where average delivery days are high, profit per market is low.** It visually flags markets that need urgent operational review.
4.  **Regional KPI Summary:** A quick-glance card summarizing Sales, Profit Margin %, and Avg. Delivery Days—the fastest way for a manager to check the pulse of their region.



---

## The Stack I Used

I stuck to the essentials to get this done quickly and reliably:

| Category | Tool | Why I Used It |
| :--- | :--- | :--- |
| **Visualization** | **Tableau** | Best-in-class for interactive, executive-ready dashboards. |
| **Data Cleaning** | **SQL** | Used for efficient, bulk aggregation and cleaning of historical data before it touched the visualization layer. |
| **Data Prep** | **Excel** | Used briefly for initial data inspection and validation before migration to SQL. |

---

## 📈 Real Insights That Drove Change

The moment this dashboard went live, it provided immediate, actionable findings:

* **Proof Point:** The moving average confirmed the business had a robust, stable growth trajectory that was previously missed.
* **The Cost of Delay:** The data validated the hypothesis: **Faster delivery times are directly correlated with stronger profit margins.** This provided the leverage needed to push for logistics improvements.
* **Operational Review Targets:** We identified two product categories that were great for sales numbers but terrible for the bottom line, immediately flagging them for cost-of-goods review.
* **Accountability:** The dashboard pinpointed specific markets that consistently failed to meet delivery SLAs, allowing managers to focus their energy on clear performance gaps.

---

## 🏆 Impact on the Business

This project was more than just a reporting change; it changed *how* the teams worked.

* **Decision-Making Confidence:** Sales and Ops now use the same numbers, eliminating arguments over whose spreadsheet is "right."
* **Faster Cycles:** Month-end review meetings now focus on *strategy* (Why did this market underperform?) rather than *data compilation* (Where do I find the data?).
* **Single Source of Truth:** We retired several manual reports, streamlining our entire reporting infrastructure.

---
