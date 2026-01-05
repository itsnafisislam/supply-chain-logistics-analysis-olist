# 📦 Optimizing Brazilian Logistics: Supply Chain Analytics Project

## 📌 Project Overview
**Role:** Supply Chain Analyst  
**Tools:** SQL (PostgreSQL), Power BI, Python  
**Domain:** E-Commerce Logistics & Operations  

This project analyzes **100k+ real e-commerce orders** to solve a critical business problem: **How to improve customer retention by optimizing logistics performance.**

Using SQL for data extraction and Power BI for visualization, I identified a massive geographic efficiency gap and operational bottlenecks that are directly eroding brand value.

---

## 🔍 The Business Problem
"GlobalMart" (a fictional name for the Olist platform) is facing stagnating growth in the Northern regions of Brazil. Customer complaints about shipping delays are rising, but management lacks visibility into the root cause:
* Is it the **Carrier** (Transportation)?
* Is it the **Seller** (Warehouse Operations)?
* Is it **Geography** (Distance)?

---

## 💡 Key Findings & Insights

### 1. The "Amazon Problem" (Geographic Inequality)
**Hypothesis:** Logistics performance is highly correlated with state infrastructure.
* **Finding:** Customers in the Northern Amazon region (e.g., Roraima) face an average lead time of **29.0 days**, compared to just **8.3 days** for customers in Sao Paulo.
* **Business Impact:** The logistics network is overly centralized in the South, creating a **3-week service gap** that makes the platform uncompetitive in 40% of the country.

### 2. The Cost of Delay (Customer Experience)
**Hypothesis:** Late deliveries are the primary driver of negative reviews.
* **Finding:** * **On-Time Orders:** Average Review Score = **4.3/5.0** ⭐⭐⭐⭐
    * **Late Orders:** Average Review Score = **2.6/5.0** ⭐⭐
* **Business Impact:** A single late delivery drops customer satisfaction by **40%**, drastically increasing churn risk.

### 3. Vendor Operational Inefficiency
**Hypothesis:** Delays are not just about distance; they are about process.
* **Finding:** Top 10 underperforming sellers take an average of **5.2 days** just to "Pick & Pack" and hand over the package to the carrier.
* **Recommendation:** These sellers are "operational anchors." We should implement strict SLAs requiring dispatch within 48 hours or face penalty fees.

---

## 🛠️ Technical Approach & Skills

### Data Modeling (SQL)
* Designed a relational database schema in **PostgreSQL** to join 9 distinct datasets (Orders, Customers, Sellers, Reviews).
* Performed complex joins and date-time calculations (**Date Intervals & Aggregations**) to measure lead times and delay risks.
* **Code Example:** [Link to SQL Queries](./02_SQL_Queries)

### Visualization (Power BI)
*(Placeholder for your Dashboard Screenshot)*
* Built an interactive **Heat Map** of Brazil to visualize lead time disparity.
* Created a **Pareto Chart** to identify the 20% of sellers causing 80% of the delays.

---

## 📂 Project Structure
```text
├── 01_Dataset/            # Raw CSV files (Olist Data)
├── 02_SQL_Queries/        # SQL scripts for analysis
│   ├── 01_logistics_by_state.sql
│   ├── 02_vendor_handling_time.sql
│   └── 03_logistics_vs_satisfaction.sql
├── 03_Visualizations/     # Power BI Dashboard (.pbix) & Screenshots
└── README.md              # Project Documentation