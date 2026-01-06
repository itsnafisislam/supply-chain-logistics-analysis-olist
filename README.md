# Brazilian Logistics Performance Analysis (Olist)

**Role:** Supply Chain Analyst  
**Tools:** SQL (PostgreSQL), Power BI, DAX  
**Domain:** E-Commerce Logistics & Operations  
Dataset Link: https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce?resource=download
---

## 1. Executive Summary
**The Business Problem:** Olist, a Brazilian e-commerce giant, faces significant customer satisfaction challenges due to unpredictable delivery times across a continent-sized geography. The company needed to identify specific bottlenecks in its logistics network to improve the "Order-to-Delivery" cycle.

**The Solution:** This project analyzes **100k+ real order records** to map the logistics network's performance. By integrating SQL for data extraction and Power BI for advanced visualization, I diagnosed the root causes of delays—identifying a massive regional disparity and pinpointing specific underperforming sellers.

---

## 2. The Dashboard
<img width="1406" height="791" alt="Final_Dashboard" src="https://github.com/user-attachments/assets/7b004947-088c-484c-8772-9f5e94fe086d" />

---

## 3. Key Findings & Strategic Insights

### **A. The "Tale of Two Brazils" (Regional Disparity)**
* **Insight:** The logistics network is heavily optimized for the South but fails the North.
* **Data:** Southern states (SP, PR, SC) enjoy average delivery times of **8-10 days**. In contrast, Northern states (RR, AP, AM) suffer delays averaging **25-30 days**.
* **Impact:** This 3-week service gap makes the platform uncompetitive in ~40% of the country's geography.

### **B. The "Seller Long Tail" (Operational Efficiency)**
* **Insight:** The *Seller Performance Matrix* (Scatter Plot) revealed that delays are not just geographic—they are operational.
* **Data:** While the majority of sellers process orders efficiently (0-15 days), a specific cluster of "High Volume / Slow Delivery" sellers exists. These outliers are driving a disproportionate amount of negative customer sentiment.
* **Actionable Recommendation:** These sellers act as "anchors" on the network. The operations team should implement stricter SLAs (Service Level Agreements) for this specific group.

### **C. The Turnaround (Time Trend Analysis)**
* **Insight:** Despite the regional challenges, the logistics strategy is moving in the right direction.
* **Data:** The *Delivery Speed Trend* analysis shows a consistent improvement in efficiency, with average lead times dropping from **~15 days in early 2017 to ~10 days in late 2018**.

### **D. The Cost of Delay (Sentiment Analysis)**
* **Insight:** There is a direct, quantifiable link between logistics speed and brand reputation.
* **Data:** States in the "Red Zone" (Slow Delivery) correlate almost perfectly with the highest volume of **1-Star Reviews**, proving that delivery speed is the primary driver of customer churn.

---

## 4. Technical Approach & Skills

### **Data Extraction & Modeling (SQL)**
* **Complex Joins:** Integrated 9 distinct relational tables (Orders, Customers, Sellers, Geolocation, Reviews) using PostgreSQL.
* **Data Cleaning:** handled NULL values in delivery timestamps and standardized state codes for mapping.

### **Advanced Visualization (Power BI)**
* **Data Modeling:** Built a Star Schema and resolved Many-to-Many relationship conflicts (Bi-directional filtering) to enable the *Seller Performance Matrix* scatter plot.
* **DAX Measures:** Created custom calculations for `Average Lead Time`, `Total Order Volume`, and `On-Time Delivery Rate`.
* **Interactive Design:** Implemented dynamic Time Slicers and Cross-Filtering to allow users to drill down from a "National View" to individual "State Performance."

---

---

## 📂 Project Structure
```text
├── 01_Dataset/            # Not uploaded due to Github limitations. Kindly visit the link at the top.
├── 02_SQL_Queries/        # SQL scripts for analysis
│   ├── 01_logistics_by_state.sql
│   ├── 02_vendor_handling_time.sql
│   └── 03_logistics_vs_satisfaction.sql
├── 03_Visualizations/     # Power BI Dashboard (.pbit) & Screenshot. (.pbix) is not uploaded due to Github limitations.

└── README.md              # Project Documentation





