# 📉 HR Attrition Analytics Dashboard

This project provides a clear and simple analysis of employee attrition using HR data (~1,470 records).  
I explored department, job role, age bands, monthly income bands, and gender to understand who is leaving and why.  
Goal: identify high-risk groups and provide actionable recommendations for retention.

---

## 📌 What This Project Covers

- Imported HR dataset into PostgreSQL (`hr_data.hr_employee`)
- Wrote SQL queries for baseline metrics and group-level analysis
- Cleaned and transformed data in PowerBI (Power Query)
- Created Age Band and Income Band groups
- Built DAX measures for KPIs and rate calculations
- Designed a corporate-style PowerBI dashboard
- Produced business-focused insights and recommendations

**Tools used:** PostgreSQL, SQL, PowerBI, DAX

---

## 📂 Folder Structure  
HR-Attrition-Analytics-Dashboard/  
│── SQL/  
│   └── attrition_queries.sql  
│── PowerBI/  
│   └── HR_Attrition_Dashboard.pbix  
│── Images/  
│   ├── dashboard_overview.png  
│   └── department_chart.png  
│── README.md  

---

## 📊 Key Insights

- Overall attrition rate: **16.1%** (237 employees left out of 1,470).  
- Highest attrition counts are in **Research & Development** and **Sales**.  
- **Job roles** with high attrition: Laboratory Technician, Sales Executive, Research Scientist.  
- **Age group 25–35** shows the highest turnover — likely due to career growth seeking.  
- **Lower income** band exhibits significantly higher attrition — pay is a clear retention factor.  
- Attrition distribution by gender: **Male 63%**, **Female 37%**.

---

## 📈 Visual Highlights

- Executive KPI cards: Total Employees, Attrition Rate %, Employees Lost, Avg Monthly Income  
- Bar charts: Attrition by Department, Job Role, Age Band, Monthly Income Band  
- Donut chart: Attrition by Gender  
- Interactive slicers: Age Band, Department, Job Role, Gender

These visuals help stakeholders quickly identify where attrition is concentrated and which employee groups to prioritize for retention programs.

---

## 🚀 How to Run This Project

1. Clone the repository.
2. Open `/PowerBI/HR_Attrition_Dashboard.pbix` in PowerBI Desktop.
3. Optionally restore SQL queries in PostgreSQL to rerun analysis.
4. Explore visuals and slicers interactively.

---

## ✅ Reusable SQL / DAX examples

**SQL examples (in `attrition_queries.sql`):**
- Total employees, employees left, attrition rate
- Attrition by department / job role / age band / income band

## 📊 Key DAX Measures (examples in the PBIX)

```DAX
Total Employees = COUNTROWS('hr_employee')

Total Attrition =
CALCULATE(
    COUNTROWS('hr_employee'),
    'hr_employee'[attrition] = "Yes"
)

Attrition Rate % = DIVIDE([Total Attrition], [Total Employees])
```
---

🙋‍♂️ **Author**  
Ayush Saini  
Aspiring Data Analyst  
📧 ayushsaini8535@gmail.com  
