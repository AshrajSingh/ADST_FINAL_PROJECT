# 📊 AI Resume Screening & Talent Acquisition Analytics Dashboard

> **MCA Final Year Capstone Project**  
> **Domain:** Human Resources Technology & Business Intelligence (Power BI)  
> **Dataset:** 1,000 Candidate Records, 10 Core Attributes

---

## 🚀 Overview

This repository contains an end-to-end Business Intelligence solution for evaluating and screening candidate resumes using **Microsoft Power BI**, **Power Query (M)**, and **DAX**. It features interactive KPI tracking, recruiter decision analysis, qualification drill-downs, and an interactive **AI Candidate Analysis Engine**.

---

## 📁 Repository Structure

```plaintext
AI_Resume_Screening_PowerBI/
│
├── data/
│   ├── AI_Resume_Screening-selected-columns.csv   # Raw source dataset (1,000 records)
│   └── AI_Resume_Screening_Preprocessed.csv       # Preprocessed dataset (with Experience Level & Hired Flag)
│
├── powerquery/
│   └── PowerQuery_Transforms.m                   # Clean Power Query M transformations
│
├── dax/
│   └── DAX_Measures.dax                          # 7 Core beginner-friendly DAX measures
│
├── dashboard/
│   ├── index.html                                # Interactive web simulator with AI Engine
│   ├── mca_capstone_power_bi_dashboard.html      # 2-Page student dashboard + AI candidate engine
│   └── executive_dashboard.html                  # Advanced executive talent analytics dashboard
│
├── docs/
│   ├── MCA_Capstone_PowerBI_Student_Guide.md     # Complete step-by-step student guide & Viva Q&A
│   └── Executive_Dashboard_Architecture.md       # Enterprise-grade Power BI architecture
│
└── README.md
```

---

## 🛠️ Data Preprocessing (Power Query)

1. **Handling Missing Values:** Null values in `Certifications` are safely mapped to `'None'`.
2. **Experience Grouping:** Created `Experience Level` conditional column:
   - `Entry Level (0-2 Yrs)`
   - `Mid Level (3-4 Yrs)`
   - `Senior Level (5+ Yrs)`
3. **Outcome Binarization:** Created `Hired Flag` (`Hire` = 1, `Reject` = 0) for aggregation.

---

## 📈 Core DAX Measures

- **Total Applicants:** `COUNTROWS('AI_Resume_Screening_Preprocessed')`
- **Total Hired:** `CALCULATE(COUNTROWS('AI_Resume_Screening_Preprocessed'), 'AI_Resume_Screening_Preprocessed'[Recruiter Decision] = "Hire")`
- **Total Rejected:** `CALCULATE(COUNTROWS('AI_Resume_Screening_Preprocessed'), 'AI_Resume_Screening_Preprocessed'[Recruiter Decision] = "Reject")`
- **Hiring Rate %:** `DIVIDE([Total Hired], [Total Applicants], 0)`
- **Avg Exp Hired:** `CALCULATE(AVERAGE('AI_Resume_Screening_Preprocessed'[Experience (Years)]), 'AI_Resume_Screening_Preprocessed'[Recruiter Decision] = "Hire")`
- **Avg Projects Hired:** `CALCULATE(AVERAGE('AI_Resume_Screening_Preprocessed'[Projects Count]), 'AI_Resume_Screening_Preprocessed'[Recruiter Decision] = "Hire")`
- **Avg Salary:** `AVERAGE('AI_Resume_Screening_Preprocessed'[Salary Expectation ($)])`

---

## 💡 Key Analytical Findings

1. **Experience Impact:** 5+ years of experience has a 100% hiring rate in the dataset.
2. **Project Portfolio Lift:** Early-career candidates with 7+ portfolio projects overcome low experience and achieve high selection rates.
3. **Merit-Driven Hiring:** Salary expectations between hired (\$80,483) and rejected (\$77,884) candidates differ by only 3.3%, indicating cost was not the primary barrier.

---

## 🌐 Live Interactive Dashboard

Open `dashboard/index.html` in any web browser to explore:
- **Page 1:** HR Screening Overview & KPIs
- **Page 2:** Candidate Qualification & Portfolio Analysis
- **Page 3:** External Examiner Viva Defense Script & Q&A
- **Page 4:** Interactive **AI Candidate Analysis Engine** (real-time scoring simulator)
