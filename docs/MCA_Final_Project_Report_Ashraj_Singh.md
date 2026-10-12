# ALLIANCE UNIVERSITY
### Alliance School of Advanced Computing
**Department of Computer Applications**  
**Program – Master of Computer Application (Semester 1)**  
**ACADEMIC YEAR: 2026–2028**

---

<br><br><br>

# PROJECT REPORT

### **AI-Driven Resume Screening & Candidate Selection Analytics Dashboard**

<br><br>

**Student Name:** ASHRAJ SINGHA RANA  
**Register Number:** PROV/ASAC/MCA/7/26/058  
**Project Name:** AI-Driven Resume Screening & Candidate Selection Analytics Dashboard  
**Course:** Master of Computer Applications (MCA)  
**Department:** Department of Computer Applications  
**Institution:** Alliance School of Advanced Computing, Alliance University  

<br><br><br><br>

---

<div style="page-break-after: always;"></div>

# ACKNOWLEDGEMENT

I would like to express my sincere gratitude to everyone who supported and guided me throughout the successful completion of this project.

I am profoundly thankful to my Project Guide for providing valuable guidance, technical suggestions, constant encouragement, and continuous academic support throughout the conception, analysis, development, and evaluation of this project. I also express my sincere gratitude to all the respected faculty members of the Department of Computer Applications and my institution, Alliance School of Advanced Computing, Alliance University, for providing the necessary computing resources, laboratories, and an exceptionally supportive academic learning environment.

I would also like to thank my peers, friends, and classmates for their active cooperation, technical discussions, and constructive feedback during the data preprocessing, dashboard modeling, and system testing phases of this project. Finally, I am deeply grateful to my family members for their constant encouragement, moral motivation, patience, and unwavering support throughout my educational journey.

I sincerely thank everyone who contributed directly or indirectly to the successful completion of this project.

<br><br>

**Student Name:** ASHRAJ SINGHA RANA  
**Register Number:** PROV/ASAC/MCA/7/26/058  
**Project Title:** AI-Driven Resume Screening & Candidate Selection Analytics Dashboard Using Power BI and Machine Learning  

<br><br>

________________________________________  
**Signature of Student**  

<br><br>

________________________________________  
**Signature of Faculty & Project Guide**  

<br>

**Project Faculty & Project Guide Name:** Oleti Durga Bravish  

---

<div style="page-break-after: always;"></div>

# 1. Abstract:

The AI-Driven Resume Screening & Candidate Selection Analytics Dashboard is an end-to-end business intelligence, data science, and web engineering project developed to modernize corporate talent acquisition workflows, eliminate subjective human screening bottlenecks, and provide automated candidate evaluation through predictive modeling and interactive visual analytics. In contemporary human resource management, technical talent acquisition is characterized by immense applicant volumes, high operational overhead, cognitive fatigue, and keyword-based screening biases. Conventional resume filtering systems frequently reject high-potential candidates who possess robust project portfolios but limited formal work tenure. This project develops an intelligent decision-support platform that transforms 1,000 unstructured candidate records across technical disciplines into actionable talent acquisition intelligence.

The primary objective of this project is to build an executive-ready analytics system that examines applicant qualifications, demographic distributions, project depth, degree backgrounds, and salary expectations to reveal empirical selection patterns and forecast hiring outcomes. The dataset comprises 1,000 candidate profiles evaluated across ten core dimensions: Candidate Identification, Candidate Name, Key Skills, Years of Experience, Educational Degree (B.Sc, B.Tech, M.Tech, MBA, PhD), Professional Certifications, Target Job Role (AI Researcher, Cybersecurity Analyst, Data Scientist, Software Engineer), Recruiter Screening Outcome (Hire vs. Reject), Expected Annual Compensation, and Portfolio Project Count. 

The project applies structured data preprocessing in Power Query (M Language), star schema data modeling, explicit Data Analysis Expressions (DAX) formula authoring, statistical exploratory analysis, and an embedded simulated machine learning evaluation engine. Power Query transformations standardize missing values in technical credentials, generate categorical experience bands (Entry, Mid, and Senior tiers), and binarize recruiter decisions for efficient algorithmic evaluation. Seven core DAX measures—including total candidate volume, conditional hiring counts, safe dynamic hiring yields, and filtered averages for experience, projects, and salary—are engineered to support dynamic slice-and-dice capability across visual cards, clustered column charts, and drill-down tables.

Furthermore, the project incorporates an interactive **AI Candidate Analysis Engine** implemented in modern web standards (HTML5, Tailwind CSS, JavaScript). The simulation engine takes real-time candidate attributes—including technical experience, portfolio count, educational qualifications, professional certifications, and compensation expectations—and computes a multi-factor candidate suitability score out of 100, an automated classification outcome (Hire/Reject), qualification match percentages, identified strengths, critical skill deficiencies, and structured recruiter advisory notes.

The analytical findings provide significant empirical insights: candidate selection is heavily determined by technical experience, with candidates possessing 5 or more years of experience achieving a 100% hiring rate. Crucially, early-career candidates (0–2 years) with significant practical project portfolios (7 or more verified projects) overcome low tenure and attain high selection yields. Furthermore, analysis reveals that salary expectation distributions are virtually identical between hired and rejected candidates, proving that selections are driven by demonstrated competence rather than budgetary filtering.

**Future Enhancements:** The system can be extended by integrating natural language processing (NLP) pipelines with Large Language Models (LLMs) to perform automated text parsing on PDF/DOCX resumes, extracting semantic competency embeddings, implementing multi-label skill clustering, deploying cloud-hosted Power BI service embedded gateways, and connecting with enterprise Applicant Tracking Systems (ATS) through automated RESTful endpoints.

Overall, this project demonstrates how data analytics, business intelligence dashboards, and machine learning principles can modernize human capital acquisition, improve recruiter efficiency, reduce screening bias, and empower organizational decision-makers with objective, evidence-based hiring insights.

---

<div style="page-break-after: always;"></div>

# 2. Introduction:

In the modern knowledge-driven economy, recruiting top-tier technical talent has become one of the most resource-intensive and critical challenges faced by enterprise organizations. Technological advancement across Artificial Intelligence, Data Science, Software Engineering, and Cybersecurity has led to an unprecedented surge in applicant volumes. For every open technical position, talent acquisition teams receive hundreds or thousands of resumes. Each application encapsulates diverse educational qualifications, variable tenures of industry experience, divergent portfolio sizes, specialized certifications, and differing salary expectations. In conventional recruitment pipelines, evaluating this vast pool of candidate data relies on manual scrutiny or rudimentary keyword-matching algorithms embedded inside legacy Applicant Tracking Systems (ATS).

Manual resume screening presents profound operational deficiencies. First, human recruiters experiencing cognitive fatigue inevitably resort to superficial screening shortcuts, such as filtering exclusively by years of experience or elite academic pedigree, while overlooking demonstrated practical capabilities. Second, basic keyword filters operate on rigid syntactic matches rather than semantic competence, frequently discarding capable candidates who express equivalent skills in alternative terminology. Third, organizational leadership rarely possesses centralized, interactive visibility into the systemic factors governing their talent acquisition funnel. Without comprehensive analytical dashboards, human resource executives cannot determine whether their screening criteria inadvertently discriminate against non-traditional applicants, whether recruitment yield varies significantly across distinct technical roles, or whether compensation expectations correlate with candidate acceptance.

The **AI-Driven Resume Screening & Candidate Selection Analytics Dashboard** addresses these challenges by developing a comprehensive, data-driven Business Intelligence (BI) and decision-support architecture. By leveraging Microsoft Power BI, Power Query (M Language), Data Analysis Expressions (DAX), and modern web-based simulation technologies, the system ingests 1,000 multi-dimensional candidate records and synthesizes them into an executive-level, interactive talent management portal.

The foundational design philosophy of this project is based on empirical transparency. Rather than treating recruitment as a subjective exercise or a black-box machine learning classification, the project establishes a dual analytical framework:
1. **Descriptive & Diagnostic Business Intelligence:** Powered by Power BI, this layer models the historical hiring outcomes of 1,000 candidates across four specialized target roles: AI Researcher, Data Scientist, Cybersecurity Analyst, and Software Engineer. It decomposes candidate attributes into discrete categorical bands and computes key performance indicators (KPIs) through explicit DAX measures, examining how academic degrees, portfolio projects, professional certifications, and experience levels interact to drive recruiter decisions.
2. **Predictive & Prescriptive Decision Support:** Hosted in an interactive web application, the **AI Candidate Analysis Engine** enables recruiters to simulate and evaluate prospective candidates in real time. By supplying candidate parameters, recruiters receive immediate qualification scoring, merit classifications, competency gap assessments, and qualitative hiring recommendations.

A major technical consideration throughout the development of this project is the integrity of data transformations. In traditional enterprise spreadsheets, missing data, inconsistent text encoding, and uncontrolled aggregations introduce substantial statistical distortion. In this project, data cleansing and schema transformation are automated in Power Query through deterministic M functions: missing professional credentials are systematically handled, non-linear continuous variables such as experience years are partitioned into standardized organizational bands (Entry Level: 0–2 Years, Mid Level: 3–4 Years, Senior Level: 5+ Years), and categorical recruiter outcomes are transformed into numeric flags for optimized aggregation performance.

Furthermore, the analytical dashboard provides deep insights into candidate equity. The empirical analysis demonstrates that while senior candidates (5+ years) enjoy near-guaranteed selection thresholds, junior candidates who maintain substantial project portfolios (7 to 10 projects) achieve hiring rates comparable to mid-career professionals. This demonstrates that practical technical output serves as a viable surrogate for traditional tenure, providing human resource departments with a concrete rationale for broadening their entry-level hiring criteria.

By uniting robust data engineering, explicit mathematical DAX modeling, intuitive visual ergonomics, and real-time candidate scoring simulation, this project showcases the practical application of Computer Applications, Data Science, and Business Intelligence in solving acute organizational challenges in modern human capital management.

---

<div style="page-break-after: always;"></div>

# 3. Problem Statement:

Recruiting qualified technical professionals in domains such as Artificial Intelligence, Data Science, Cybersecurity, and Software Engineering is a complex, high-stakes operational problem. In competitive hiring environments, hundreds of candidates apply for a single specialized position, yet only a small fraction can be advanced to intensive technical interviews. Human resource departments face significant difficulties in screening resumes efficiently, objectively, and accurately due to several interrelated challenges:

1. **Information Overload and Operational Inefficiency:**
   A typical recruitment team must review thousands of resumes across diverse job roles. Manually parsing every resume to evaluate educational pedigree, technical skills, years of experience, and project work requires substantial labor hours. This causes severe screening backlogs, inflates the organizational cost-per-hire, and lengthens the overall time-to-hire metric.
   
2. **Subjective Human Bias and Inconsistent Evaluation:**
   Human screeners exhibit unconscious cognitive biases, varying fatigue levels, and inconsistent evaluation criteria. Candidates with identical qualifications may receive conflicting outcomes depending on which recruiter inspects their resume and at what time of day. This inconsistency undermines institutional fairness and compromises talent quality.

3. **Inadequacy of Traditional Keyword-Based ATS Filters:**
   Conventional Applicant Tracking Systems rely on static boolean string matching. If a candidate omits a specific keyword or utilizes synonyms (e.g., listing "Deep Learning" rather than "Neural Networks"), their resume is automatically discarded. Furthermore, keyword filters cannot evaluate the holistic balance of a candidate's profile—such as whether extensive practical projects can compensate for a slight deficit in formal tenure.

4. **Lack of Executive Talent Acquisition Analytics:**
   Enterprise human resource executives frequently lack centralized, dynamic dashboards that provide real-time diagnostic insights into their recruitment pipeline. Standard enterprise reporting relies on disconnected, static spreadsheets that cannot perform multi-dimensional cross-filtering, fail to track role-specific hiring yields, and cannot assess the true return-on-investment (ROI) of external credentials or academic degrees.

5. **Difficulty in Real-Time Candidate Qualification Benchmarking:**
   Recruiters evaluating an incoming resume often lack a rapid, standardized mechanism to benchmark the applicant's experience, project portfolio, credentials, and salary expectations against established historical norms. Without an interactive candidate evaluation engine, recruiters cannot instantly determine whether an applicant represents an exceptional prospect or falls below role requirements.

6. **Distortion from Data Leakage and Uncontrolled Metrics:**
   In basic analytical reporting, ad-hoc aggregation formulas often compute misleading statistics—such as dividing by zero when candidate subsets are empty, or mixing rejected candidate metrics with successful hires. Robust analytical solutions must enforce explicit calculation contexts using safe mathematical operators and segregated measures.

The main problem addressed in this project can be summarized as developing an integrated, reliable, and data-driven recruitment analytics system that:
* Ingests and cleans 1,000 multi-dimensional candidate resume records.
* Implements robust ETL procedures in Power Query to eliminate missing values and standardize attributes.
* Formulates explicit, mathematically safe DAX measures for core recruitment metrics.
* Models multi-dimensional relationships across job roles, education, certifications, portfolio sizes, and compensation.
* Visualizes talent acquisition KPIs through a multi-page, executive-grade Power BI dashboard.
* Provides an interactive, real-time AI Candidate Analysis Engine for instant scoring and screening recommendations.

---

<div style="page-break-after: always;"></div>

# 4. Existing System:

The existing systems utilized across corporate recruiting departments primarily rely on manual human review, static spreadsheet trackers (e.g., Microsoft Excel or Google Sheets), basic commercial Applicant Tracking Systems (ATS) with simple keyword filtering, and disconnected periodic reporting summaries. While these conventional methods have historically supported fundamental hiring activities, they possess severe systemic limitations when applied to high-volume technical screening.

### Detailed Breakdown of Existing Approaches:

* **Manual Spreadsheet Tracking:**
  In many organizations, recruiters maintain candidate submissions in standalone spreadsheets. Recruiters manually input applicant names, degrees, reported experience, and screening notes. This workflow is error-prone, labor-intensive, and inherently non-scalable. As candidate volume expands, spreadsheets become unwieldy, version control is lost, and collaborative analysis across distributed HR teams becomes virtually impossible.

* **Keyword-Driven ATS Screening:**
  Commercial ATS platforms screen incoming resumes by scanning text against predetermined job description keywords. Candidates who match specific keyword frequencies advance, while others are automatically rejected. This mechanism fails to assess candidate competence: it rewards resume keyword stuffing and penalizes capable candidates who express their technical skills in descriptive narrative formats.

* **Static, Disconnected Reporting:**
  Existing HR reporting typically consists of retrospective, static PDF exports or weekly slide decks prepared by HR coordinators. These reports cannot be dynamically filtered by hiring managers, do not allow drill-downs into specific candidate cohorts, and fail to provide diagnostic clarity on why candidates in specific roles or experience brackets are being rejected.

* **Subjective Interview Scheduling:**
  Decisions regarding which candidates should proceed to interviews are largely driven by recruiter intuition rather than objective scoring models. Recruiters lack decision-support tools that systematically weight portfolio project counts, academic qualifications, and verified certifications against empirical role benchmarks.

### Major Limitations of the Existing System:

1. **High Operational Overhead and Cognitive Fatigue:**
   Manual inspection of hundreds of technical resumes induces fatigue, causing recruiters to evaluate later applications with significantly less rigor than earlier ones.
2. **Inflexible and Narrow Screening Criteria:**
   Existing systems rely heavily on rigid experience thresholds (e.g., "Must possess minimum 3 years experience"), indiscriminately rejecting ambitious junior developers who have built high-complexity software projects.
3. **Lack of Dynamic Multi-Dimensional Cross-Filtering:**
   Static spreadsheets do not permit interactive slicing across multiple attributes simultaneously—such as observing how hiring rates vary for Data Scientists holding an M.Tech versus B.Tech degree within a specific salary bracket.
4. **Vulnerability to Calculation Errors and Division-by-Zero:**
   Ad-hoc spreadsheet formulas frequently return errors (`#DIV/0!`, `#VALUE!`) when slicers isolate empty categories or null records, degrading analytical reliability.
5. **Absence of Real-Time Simulation and Scoring Engines:**
   Recruiters cannot test hypothetical or incoming candidate profiles against benchmark models to receive instant suitability percentages, strength breakdowns, or deficiency warnings.
6. **Non-Standardized Data Handling:**
   Missing fields (such as candidates who hold no professional certifications) are frequently stored inconsistently as blank cells, `#N/A`, or whitespace, corrupting downstream aggregation and statistical summaries.

These profound limitations motivate the development of an integrated, automated Business Intelligence solution that unites structured Power Query ETL pipelines, explicit DAX modeling, executive dashboard visualization, and an interactive AI Candidate Analysis Engine.

---

<div style="page-break-after: always;"></div>

# 5. System:

The proposed **AI-Driven Resume Screening & Candidate Selection Analytics Dashboard** is an enterprise-grade Business Intelligence and candidate decision-support system designed to automate recruitment data cleansing, compute multidimensional talent acquisition KPIs, visualize hiring funnels, and provide real-time candidate suitability scoring. The system architecture is organized into four core functional modules:

```
[Raw CSV Dataset (1,000 Records)]
              │
              ▼
┌─────────────────────────────────────────────────────────┐
│ MODULE 1: Power Query ETL & Data Engineering Pipeline    │
│  - Null Imputation (Certifications -> 'None')           │
│  - Categorical Bucketing (Experience Level Bands)        │
│  - Integer Outcome Binarization (Hired Flag: 1/0)        │
└─────────────────────────────────────────────────────────┘
              │
              ▼
┌─────────────────────────────────────────────────────────┐
│ MODULE 2: Data Modeling & Explicit DAX Measure Layer     │
│  - Base Metric Aggregations (COUNTROWS)                 │
│  - Filter Context Overrides (CALCULATE)                 │
│  - Safe Numerical Division (DIVIDE with zero trap)      │
│  - Continuous Variable Averages (AVERAGE)               │
└─────────────────────────────────────────────────────────┘
              │
              ▼
┌─────────────────────────────────────────────────────────┐
│ MODULE 3: Multi-Page Power BI Dashboard Presentation     │
│  - Page 1: HR Screening Overview & Executive KPIs       │
│  - Page 2: Candidate Qualification & Project Analytics │
│  - Multi-Dimensional Global Slicers (Role, Edu, Dec)    │
└─────────────────────────────────────────────────────────┘
              │
              ▼
┌─────────────────────────────────────────────────────────┐
│ MODULE 4: Interactive AI Candidate Analysis Engine      │
│  - Real-Time Multi-Factor Candidate Form Input          │
│  - Heuristic Scoring & Match Percentage Algorithm       │
│  - Automated Decision, Strengths & Gap Diagnostics      │
└─────────────────────────────────────────────────────────┘
```

### Module 1: Power Query ETL & Data Preprocessing
The preprocessing engine operates within Power Query using functional M transformations. Raw candidate records are validated, column types are cast (integers for IDs, years, projects, and salary; strings for names, roles, degrees, and decisions), and missing data is addressed:
* *Null Replacement:* Empty entries in the `Certifications` column are replaced with the explicit string `"None"`, maintaining data cleanliness and eliminating null-handling errors.
* *Conditional Column Creation (`Experience Level`):* Continuous numerical experience (0–10 years) is bucketed into three organizational career bands:
  $$\text{Experience Level} = \begin{cases} 
  \text{"Entry Level (0-2 Yrs)"}, & \text{if Experience } \le 2 \\
  \text{"Mid Level (3-4 Yrs)"}, & \text{if Experience } \le 4 \\
  \text{"Senior Level (5+ Yrs)"}, & \text{otherwise}
  \end{cases}$$
* *Outcome Binarization (`Hired Flag`):* Recruiter decisions are converted into binary flags ($1$ for `"Hire"`, $0$ for `"Reject"`) to enable mathematical aggregations.

### Module 2: Explicit DAX Analytical Measure Layer
Rather than relying on implicit aggregations that can yield misleading numbers when filters are applied, the system implements explicit DAX measures:
* **`[Total Applicants]`**: Implemented via `COUNTROWS('Table')`, returning the exact row count of the active filter context.
* **`[Total Hired]` & `[Total Rejected]`**: Implemented using `CALCULATE(COUNTROWS('Table'), 'Table'[Recruiter Decision] = "Hire")`. `CALCULATE` modifies the filter context dynamically.
* **`[Hiring Rate %]`**: Implemented via `DIVIDE([Total Hired], [Total Applicants], 0)`. The `DIVIDE` function ensures zero is returned when the applicant denominator is empty, completely avoiding divide-by-zero crashes.
* **`[Avg Exp Hired]` & `[Avg Projects Hired]`**: Computed by wrapping `AVERAGE` inside `CALCULATE` filtered exclusively to successful hires, isolating the qualifications of accepted applicants.
* **`[Avg Salary]`**: Computed via `AVERAGE('Table'[Salary Expectation ($)])`, establishing benchmark compensation levels.

### Module 3: Executive Power BI Dashboard Visualization
The visualization layer is structured into a clean, two-page layout:
* **Page 1: HR Screening Overview:**
  * Top KPI Summary Cards displaying Total Applicants (1,000), Total Hired (812), Hiring Rate % (81.2%), and Average Expected Salary (\$79,995).
  * Clustered Column Chart mapping Total Applicants versus Total Hired across the four target technical roles.
  * Donut Chart depicting degree qualification distribution across B.Sc, B.Tech, M.Tech, MBA, and PhD.
  * Clustered Bar Chart visualizing the escalation in Hiring Rate % across the three Experience Level bands.
  * Global interactive slicers for Job Role, Education Degree, and Recruiter Decision.
* **Page 2: Candidate Qualification & Project Analytics:**
  * Clustered Bar Chart tracking Average Projects Count by Job Role segmented by Hired versus Rejected outcomes.
  * Clustered Column Chart comparing applicant volume with and without certifications across hiring decisions.
  * Granular Candidate Summary Drill-Down Table displaying individual candidate records for detailed inspection.

### Module 4: Interactive AI Candidate Analysis Engine
The system integrates an interactive candidate evaluation simulator. Recruiters can input candidate profiles—including Name, Role, Education, Certification, Experience, Projects, Expected Salary, and Key Skills—and click **Analyze Candidate**. The evaluation algorithm evaluates the applicant's attributes against role benchmarks:
* Multi-factor suitability score calculated out of 100.
* Binary hiring classification (`HIRE` vs. `REJECT`).
* Automated experience band assignment.
* Dynamic skill-match percentage.
* Bulleted analytical strengths (e.g., extensive experience, strong project portfolio).
* Identified skill deficiencies or certification gaps.
* Formatted recruiter recommendation summary.

---

<div style="page-break-after: always;"></div>

# 6. Data Set:

The dataset serves as the empirical foundation of the AI-Driven Resume Screening & Candidate Selection Analytics Dashboard. It contains historical screening records for 1,000 technology professionals evaluated across four major technical job roles.

### 1. Dataset Overview
| Dataset Component | Count / Value | Description |
|:---|:---:|:---|
| **Total Candidate Records** | 1,000 | Individual candidate applications |
| **Total Features / Columns** | 10 (Raw) / 12 (Engineered) | Attributes covering experience, skills, education, and outcomes |
| **Target Job Roles** | 4 | AI Researcher, Cybersecurity Analyst, Data Scientist, Software Engineer |
| **Academic Degree Types** | 5 | B.Sc, B.Tech, M.Tech, MBA, PhD |
| **Professional Certifications** | 4 Categories | AWS Certified, Google ML, Deep Learning Specialization, None |
| **Overall Hired Count** | 812 (81.2%) | Successful applications |
| **Overall Rejected Count** | 188 (18.8%) | Unsuccessful applications |

### 2. Dataset Tables & Schema
| Column Name | Data Type | Permissible Values / Range | Description |
|:---|:---:|:---:|:---|
| `Resume_ID` | Integer | 1 to 1000 | Unique candidate primary key |
| `Name` | Text | String (Full Name) | Candidate legal name |
| `Skills` | Text | Comma-separated strings | Technical competencies (e.g., Python, PyTorch, SQL) |
| `Experience (Years)` | Integer | 0 to 10 | Total years of relevant professional experience |
| `Education` | Text | B.Sc, B.Tech, M.Tech, MBA, PhD | Highest educational degree attained |
| `Certifications` | Text | AWS, Google ML, Deep Learning, None | Industry certifications held |
| `Job Role` | Text | 4 Technical Disciplines | Target employment role |
| `Recruiter Decision` | Text | 'Hire', 'Reject' | Final recruitment outcome |
| `Salary Expectation ($)` | Currency | \$40,000 to \$120,000 | Candidate expected annual compensation |
| `Projects Count` | Integer | 0 to 10 | Number of verified portfolio projects completed |
| `Experience Level` *(Engineered)* | Text | Entry (0-2y), Mid (3-4y), Senior (5+y) | Categorical career stage bucket |
| `Hired Flag` *(Engineered)* | Integer | 1, 0 | Binary recruitment outcome indicator |

### 3. Data Preprocessing Pipeline
| Step | Function / Operation | Purpose |
|:---|:---|:---|
| **Missing Value Handling** | `Table.ReplaceValue(..., null, "None", ...)` | Eliminates null credentials in the Certifications attribute |
| **Type Coercion** | `Table.TransformColumnTypes(...)` | Enforces integer, text, and currency data integrity |
| **Experience Bucketing** | `Table.AddColumn(..., "Experience Level", ...)` | Converts continuous years into three discrete analytical tiers |
| **Outcome Flagging** | `Table.AddColumn(..., "Hired Flag", ...)` | Generates binary integers for fast mathematical calculation |
| **Data Validation** | Schema integrity verification | Confirms zero remaining nulls across all 1,000 records |

### 4. Analytical & Prediction Benchmarks
| Metric / Cohort | Total Applicants | Hired Count | Rejected Count | Hiring Rate (%) |
|:---|:---:|:---:|:---:|:---:|
| **Overall Population** | **1,000** | **812** | **188** | **81.2%** |
| **Entry Level (0–2 Yrs)** | 273 | 114 | 159 | **41.8%** |
| **Mid Level (3–4 Yrs)** | 186 | 157 | 29 | **84.4%** |
| **Senior Level (5+ Yrs)** | 541 | 541 | 0 | **100.0%** |
| **AI Researcher** | 257 | 210 | 47 | **81.7%** |
| **Cybersecurity Analyst** | 255 | 202 | 53 | **79.2%** |
| **Data Scientist** | 255 | 205 | 50 | **80.4%** |
| **Software Engineer** | 233 | 195 | 38 | **83.7%** |

### 5. Dataset Limitations
* The dataset reflects a standardized sample size of 1,000 candidate profiles.
* Experience caps at 10 years, which represents mid-to-senior engineering roles but excludes executive leadership (e.g., Directors, CTOs).
* The dataset records final binary outcomes (`Hire` / `Reject`) rather than multi-stage funnel stages (e.g., Phone Screen, Technical Round 1, Culture Fit).
* Skill listings are formatted as comma-separated text strings rather than normalized relational bridge tables.

**Conclusion:**  
The dataset provides a balanced distribution across all four target roles (~25% each) and educational qualifications (~20% each), making it well-suited for diagnostic recruitment analytics, DAX filter modeling, and machine learning simulation.

---

<div style="page-break-after: always;"></div>

# 7. Technologies Used:

The development of the AI-Driven Resume Screening & Candidate Selection Analytics Dashboard utilizes a modern technology stack spanning business intelligence, functional data transformation, mathematical modeling, and responsive web technologies:

* **Microsoft Power BI Desktop:**
  The primary Business Intelligence development environment utilized to design data models, implement DAX formulas, configure visual cards, clustered charts, donut graphs, and construct the interactive dashboard interface.

* **Power Query & M Formula Language:**
  The functional extract-transform-load (ETL) engine utilized inside Power BI. M code transformations are used to ingest the raw CSV dataset, standardize column schemas, impute missing values, bucket continuous experience tenures into discrete categories, and generate numeric outcome flags.

* **Data Analysis Expressions (DAX):**
  The native formula language of Power BI utilized to author dynamic business metrics. Core DAX functions leveraged include `COUNTROWS` for row volume computation, `CALCULATE` for filter context modification, `AVERAGE` for continuous metric aggregation, and `DIVIDE` for safe numerical division preventing zero-denominator crashes.

* **Python 3.14 & Pandas Library:**
  Utilized for exploratory data analysis, statistical correlation analysis, dataset verification, validation of DAX calculation outputs, and automated generation of structured project artifacts.

* **HTML5 (HyperText Markup Language 5):**
  Used to construct the semantic interface of the interactive web dashboard simulator, establishing navigation tabs, form control inputs, structured KPI cards, SVG graphical canvases, and candidate drill-down data tables.

* **CSS3 & Tailwind CSS Framework:**
  Employed for visual styling, grid layouts, color systems (incorporating corporate navy `#1b2a4a`, emerald green `#10b981`, and amber `#f59e0b`), typography formatting, input state focus transitions, and mobile-responsive layouts.

* **Modern JavaScript (ES6+):**
  Powers client-side reactivity, interactive tab switching (`switchTab`), dynamic slicer filtering, candidate summary table rendering, and the client-side scoring logic inside the AI Candidate Analysis Engine.

* **Git & GitHub Version Control:**
  Utilized for source code version tracking, modular directory organization, and cloud repository hosting (`ADST_FINAL_PROJECT`).

* **Visual Studio Code:**
  The integrated development environment (IDE) used to write, debug, and maintain project scripts, HTML documents, DAX code files, and documentation.

---

<div style="page-break-after: always;"></div>

# 8. Data Flow Diagram:

The Data Flow Diagrams (DFD) illustrate the structural movement of information through the AI-Driven Resume Screening & Candidate Selection Analytics Dashboard, showing how raw candidate records are transformed into executive visual intelligence and interactive candidate scoring recommendations.

### Level 0: Context Data Flow Diagram
```
  ┌─────────────────────────┐
  │                         │
  │    Raw Candidate Data   │ (1,000 Candidate Records)
  │      (CSV Source)       │
  │                         │
  └────────────┬────────────┘
               │
               ▼
┌─────────────────────────────────────────────────────────────┐
│                                                             │
│                          PROCESS 0                          │
│                                                             │
│       AI-DRIVEN RESUME SCREENING & TALENT ANALYTICS         │
│                        DASHBOARD                            │
│                                                             │
└──────────────┬───────────────────────────────┬──────────────┘
               │                               │
               ▼                               ▼
  ┌─────────────────────────┐     ┌─────────────────────────┐
  │                         │     │                         │
  │     HR Executives &     │     │   Technical Recruiters  │
  │     Talent Leaders      │     │    & Hiring Managers    │
  │  (Executive Dashboards) │     │ (AI Candidate Evaluator)│
  │                         │     │                         │
  └─────────────────────────┘     └─────────────────────────┘
```

### Level 1: Detailed Data Flow Diagram
```
┌──────────────────┐
│ Raw CSV Records  │
└────────┬─────────┘
         │
         ▼
┌──────────────────────────────────────────────┐
│ P1: Power Query ETL & Ingestion              │
│     - Cast Data Types                        │
│     - Impute Nulls in Certifications         │
│     - Bucket Experience into Levels          │
│     - Binarize Outcomes (Hired Flag)         │
└──────────────────────┬───────────────────────┘
                       │
                       ▼
              [Cleaned Data Store]
                       │
         ┌─────────────┴─────────────┐
         ▼                           ▼
┌─────────────────────────┐ ┌─────────────────────────────────┐
│ P2: DAX Measure Engine  │ │ P4: AI Candidate Analysis Engine│
│     - [Total Applicants]│ │     - Ingest Candidate Details  │
│     - [Total Hired]     │ │     - Multi-Factor Heuristic    │
│     - [Hiring Rate %]   │ │     - Compute Suitability Score │
│     - [Avg Exp / Sal]   │ │     - Categorize Decision       │
└────────────┬────────────┘ └────────────────┬────────────────┘
             │                               │
             ▼                               ▼
┌─────────────────────────┐ ┌─────────────────────────────────┐
│ P3: Dashboard Visualizer│ │ P5: Real-Time Diagnostic Output │
│     - Executive Cards   │ │     - Suitability Score / 100   │
│     - Column / Bar Visuals│ - Experience Classification     │
│     - Donut Chart       │ │     - Strengths & Deficiencies  │
│     - Drill-Down Table  │ │     - Recruiter Recommendations │
└────────────┬────────────┘ └────────────────┬────────────────┘
             │                               │
             └───────────────┬───────────────┘
                             ▼
              ┌─────────────────────────────┐
              │ End-User Decision Interface │
              │ (Recruiters & HR Leadership)│
              └─────────────────────────────┘
```

---

<div style="page-break-after: always;"></div>

# 9. Output:

The output of the project consists of a multi-page interactive analytics platform featuring diagnostic data visualizations, KPI monitoring cards, drill-down tables, and an interactive candidate evaluation engine.

### 9.1 HR Screening Performance Dashboard (Page 1)
Page 1 provides a comprehensive talent acquisition overview for corporate HR leadership:
* **Top Metric Cards:**
  * `Total Applicants`: Displays **1,000** candidates evaluated.
  * `Total Hired`: Displays **812** accepted candidates.
  * `Hiring Rate %`: Computes an aggregate **81.2%** positive screening yield.
  * `Avg Expected Salary`: Displays a baseline expectation of **\$79,995**.
* **Clustered Column Chart (Volume & Hires by Job Role):**
  * Displays candidate volume across AI Researcher (257 applicants, 210 hired, 81.7% yield), Cybersecurity Analyst (255 applicants, 202 hired, 79.2% yield), Data Scientist (255 applicants, 205 hired, 80.4% yield), and Software Engineer (233 applicants, 195 hired, 83.7% yield).
* **Donut Chart (Candidate Pool by Education):**
  * Visualizes the uniform distribution of degree holders across B.Sc (20.3%), B.Tech (20.1%), M.Tech (20.3%), MBA (19.8%), and PhD (19.5%).
* **Horizontal Bar Chart (Hiring Rate % by Experience Level):**
  * Highlights the clear step-function in hiring yield: Entry Level (0–2 Yrs) achieves **41.8%**, Mid Level (3–4 Yrs) increases to **84.4%**, and Senior Level (5+ Yrs) reaches a deterministic **100.0%**.

### 9.2 Candidate Qualification Analysis (Page 2)
Page 2 delivers granular technical insights into candidate capabilities:
* **Average Projects Count by Role (Hired vs. Rejected):**
  * Highlights that across every technical domain, hired candidates completed nearly twice as many portfolio projects (average **5.65 projects**) compared to rejected applicants (average **2.91 projects**).
* **Certification Impact Analysis:**
  * Compares hiring outcomes across AWS Certified, Google ML, Deep Learning Specialization, and None. Candidates holding specialized credentials achieve an average **+5.3% hiring rate lift** over uncertified peers.
* **Granular Drill-Down Summary Table:**
  * An interactive data grid enabling recruiters to inspect individual candidate IDs, candidate names, assigned roles, experience years, project counts, academic qualifications, credentials, expected salary, and hiring outcomes.

### 9.3 AI Candidate Analysis Engine & Interactive Simulation
The embedded AI Candidate Analysis Engine enables recruiters to simulate candidate evaluations in real time:
* **User Input Controls:**
  * Standardized input fields for Candidate Name, Target Job Role (dropdown), Education (dropdown), Certifications, Experience in Years (numeric spinner), Portfolio Projects Count (numeric spinner), Expected Salary, Key Skills text input, and an Attach PDF simulation trigger.
* **Real-Time Evaluation Panel:**
  * Upon clicking **Analyze Candidate**, the panel calculates and reveals:
    * **AI Suitability Score:** A calculated score out of 100 based on experience, projects, education, and credentials.
    * **Decision Badge:** Clear visual badge showing **`HIRE`** (emerald) or **`REJECT`** (red).
    * **Career Stage Band:** Automated assignment into Entry, Mid, or Senior tiers.
    * **Skill Match Percentage:** Dynamically calculated benchmark match percentage.
    * **Strengths Diagnosis:** Itemized bullet points highlighting key qualifications (e.g., strong project portfolio, advanced degree).
    * **Deficiency Identification:** Actionable warnings regarding missing credentials or low tenure.
    * **Recruiter Recommendation:** A concise narrative summary advising whether to schedule technical interviews or retain the resume on file.

---

<div style="page-break-after: always;"></div>

# 10. Conclusion:

The **AI-Driven Resume Screening & Candidate Selection Analytics Dashboard** demonstrates the practical application of Business Intelligence, data engineering, statistical modeling, and web simulation within modern human capital management. By transforming 1,000 unstructured candidate records into a centralized, interactive analytics platform, the project directly addresses the operational bottlenecks, cognitive biases, and lack of visibility that undermine conventional recruitment workflows.

The technical implementation demonstrates the importance of a structured analytical pipeline. By utilizing Power Query for functional ETL operations, missing data in professional credentials was systematically handled, continuous experience variables were bucketed into standardized career bands, and recruitment outcomes were binarized for optimized computation. Within Power BI, the authoring of explicit DAX measures using `CALCULATE`, `DIVIDE`, `COUNTROWS`, and `AVERAGE` established a reliable analytical foundation that eliminates divide-by-zero errors and adapts seamlessly to dynamic slicer filter contexts.

Crucially, the empirical findings generated by the dashboard deliver valuable insights for modern recruitment strategy:
1. **The Seniority Hiring Threshold:** Candidates with 5 or more years of experience achieved a 100% selection rate in the dataset, while over 84% of all rejections occurred in the 0–2 years Entry Level bracket.
2. **The Compensatory Power of Practical Projects:** The analysis demonstrates that early-career applicants (0–2 years) who complete robust technical portfolios (7 or more verified projects) achieve hiring rates comparable to mid-career professionals. Practical project work serves as an effective surrogate for formal work experience.
3. **Compensation Neutrality:** Expected salary levels between hired candidates (\$80,483) and rejected candidates (\$77,884) showed a difference of only 3.3%, confirming that screening decisions were driven by candidate competence and experience rather than cost minimization.

Furthermore, integrating the interactive **AI Candidate Analysis Engine** extends the system from retrospective reporting into real-time decision support. Recruiters can evaluate incoming applicant parameters against established historical benchmarks, obtaining instant qualification scores, classification outcomes, competency gap breakdowns, and recruiter recommendations.

### Limitations:
While the system provides a robust analytical platform, certain limitations should be noted:
* The current dataset represents 1,000 records across four primary technical disciplines; expanding to non-technical or executive roles would require additional domain calibration.
* Technical skills are analyzed as categorical strings rather than parsed through semantic natural language processing (NLP) vector embeddings.
* Candidate outcomes are modeled as binary decisions rather than tracking progression through multi-stage recruitment funnels.

### Future Work:
Future enhancements can build upon this foundation by:
1. Incorporating Large Language Model (LLM) document parsers to extract structured metadata directly from uploaded PDF and DOCX resumes.
2. Implementing semantic skill-matching algorithms using cosine similarity over pre-trained embeddings (e.g., BERT or Sentence-Transformers).
3. Integrating RESTful application programming interfaces (APIs) to connect the dashboard directly with live commercial Applicant Tracking Systems (e.g., Workday, Greenhouse).
4. Deploying the Power BI report to Microsoft Fabric or Power BI Service with scheduled automated data refreshes and row-level security (RLS).

In conclusion, this project illustrates the complete lifecycle of a modern data-driven application—from raw data ingestion and functional transformation to mathematical DAX modeling, interactive visual dashboard engineering, and predictive web simulation. It provides human resource leaders and hiring managers with a transparent, objective, and scalable tool to identify high-potential technical talent efficiently and equitably.
