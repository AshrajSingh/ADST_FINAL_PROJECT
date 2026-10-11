# MCA Final Year Capstone Project — Complete Guide
**Project Title:** AI-Driven Resume Screening & Candidate Selection Analytics  
**Tool:** Microsoft Power BI Desktop  
**Dataset:** `AI_Resume_Screening-selected-columns.csv` (1,000 Candidates, 10 Columns)

---

## 📋 What You Will Build
A clean, 2-page interactive Power BI dashboard that analyzes 1,000 candidate resumes to discover what factors (experience, projects, education, certifications) influence hiring decisions.

---

## STEP 1: Load Data Into Power BI

1. Open **Power BI Desktop**.
2. Click **Home** tab → **Get Data** → **Text/CSV**.
3. Browse to your file: `D:\data science\DATASETS\AI_Resume_Screening-selected-columns.csv`.
4. A preview window appears. Click **Transform Data** (NOT "Load" — we need to clean data first).
5. The **Power Query Editor** window opens. You will see your 1,000 rows and 10 columns.

---

## STEP 2: Data Preprocessing in Power Query (Button Clicks Only)

### 2A. Replace Missing Certifications with 'None'
> **Why:** Some rows have blank/null certification values. Replacing with `'None'` makes charts look clean.

1. In Power Query Editor, **click on the column header** `Certifications` to select it.
2. In the top ribbon, click **Home** tab → **Replace Values**.
3. A dialog box opens:
   - **Value To Find:** leave it blank (or type `null`)
   - **Replace With:** type `None`
4. Click **OK**.
5. ✅ You will see all blank cells now say "None".

---

### 2B. Create 'Experience Level' Column (Group Experience Into 3 Buckets)
> **Why:** Instead of showing 0, 1, 2, ... 10 years separately, grouping them makes bar charts much clearer.

1. In the top ribbon, click the **Add Column** tab → **Conditional Column**.
2. A dialog box opens. Fill in:
   - **New column name:** `Experience Level`
   - **Clause 1:**
     - Column name: `Experience (Years)`
     - Operator: `is less than or equal to`
     - Value: `2`
     - Output: `Entry Level (0-2 Yrs)`
   - Click **Add Clause** button to add another rule:
   - **Clause 2:**
     - Column name: `Experience (Years)`
     - Operator: `is less than or equal to`
     - Value: `4`
     - Output: `Mid Level (3-4 Yrs)`
   - **Otherwise:** `Senior Level (5+ Yrs)`
3. Click **OK**.
4. ✅ A new column "Experience Level" appears on the right side of your table.

---

### 2C. Create 'Hired Flag' Column (Convert Hire/Reject to 1/0)
> **Why:** Numbers (1 and 0) are easier for Power BI to sum and average than text.

1. Click **Add Column** tab → **Conditional Column**.
2. Fill in:
   - **New column name:** `Hired Flag`
   - **Clause 1:**
     - Column name: `Recruiter Decision`
     - Operator: `equals`
     - Value: `Hire`
     - Output: `1`
   - **Otherwise:** `0`
3. Click **OK**.
4. **Important:** Click the `ABC` icon on the new column header and change it to **Whole Number**.
5. ✅ The column now shows `1` for Hire and `0` for Reject.

---

### 2D. Close & Apply
1. Click **Home** tab → **Close & Apply** (top-left corner).
2. Power BI will load the cleaned data into the report canvas.
3. ✅ Your data is now ready with **12 columns** (10 original + 2 new ones).

---

## STEP 3: Create 7 DAX Measures

### How to Create a Measure (Repeat for Each One):
1. Look at the **Data pane** on the right side of Power BI.
2. **Right-click** on your table name → Select **New measure**.
3. A formula bar appears at the top (like Excel's formula bar).
4. **Delete** the placeholder text.
5. **Copy and paste** the formula below.
6. Press **Enter**.
7. Set the format using the **Measure tools** tab that appears in the top ribbon.

---

### Measure 1: Total Applicants
```dax
Total Applicants = 
COUNTROWS('AI_Resume_Screening_Preprocessed')
```
- **Format:** Whole Number (comma separator)
- **Expected Result:** `1,000`
- **Viva Explanation:** *"COUNTROWS counts every row in the table."*

---

### Measure 2: Total Hired
```dax
Total Hired = 
CALCULATE(
    COUNTROWS('AI_Resume_Screening_Preprocessed'), 
    'AI_Resume_Screening_Preprocessed'[Recruiter Decision] = "Hire"
)
```
- **Format:** Whole Number
- **Expected Result:** `812`
- **Viva Explanation:** *"CALCULATE modifies the filter context to count only 'Hire' rows."*

---

### Measure 3: Total Rejected
```dax
Total Rejected = 
CALCULATE(
    COUNTROWS('AI_Resume_Screening_Preprocessed'), 
    'AI_Resume_Screening_Preprocessed'[Recruiter Decision] = "Reject"
)
```
- **Format:** Whole Number
- **Expected Result:** `188`

---

### Measure 4: Hiring Rate %
```dax
Hiring Rate % = 
DIVIDE([Total Hired], [Total Applicants], 0)
```
- **Format:** Click the **%** button in Measure Tools ribbon, set 1 decimal place
- **Expected Result:** `81.2%`
- **Viva Explanation:** *"DIVIDE safely divides without errors. If denominator is 0, it returns 0."*

---

### Measure 5: Average Experience (Hired)
```dax
Avg Exp Hired = 
CALCULATE(
    AVERAGE('AI_Resume_Screening_Preprocessed'[Experience (Years)]), 
    'AI_Resume_Screening_Preprocessed'[Recruiter Decision] = "Hire"
)
```
- **Format:** Decimal Number, 1 decimal place
- **Expected Result:** `5.8 Years`

---

### Measure 6: Average Projects (Hired)
```dax
Avg Projects Hired = 
CALCULATE(
    AVERAGE('AI_Resume_Screening_Preprocessed'[Projects Count]), 
    'AI_Resume_Screening_Preprocessed'[Recruiter Decision] = "Hire"
)
```
- **Format:** Decimal Number, 1 decimal place
- **Expected Result:** `5.7 Projects`

---

### Measure 7: Average Salary
```dax
Avg Salary = 
AVERAGE('AI_Resume_Screening_Preprocessed'[Salary Expectation ($)])
```
- **Format:** Currency (\$), 0 decimal places
- **Expected Result:** `$79,995`

---

> [!IMPORTANT]
> **Table Name:** If your table is named differently (e.g., `AI_Resume_Screening-selected-columns_2` instead of `AI_Resume_Screening_Preprocessed`), replace the table name in every measure above. You can see your exact table name in the Data pane on the right side.

---

## STEP 4: Build the Dashboard (2 Pages)

### How to Add Visuals:
1. Make sure you are in **Report View** (click the top icon on the far-left sidebar — it looks like a page with charts).
2. In the **Visualizations pane** (right side), hover over the small icons to find the chart type you need.
3. Click the icon to place the visual on the canvas.
4. Drag columns/measures from the **Data pane** into the visual's field wells.

---

### Page 1: HR Screening Overview

#### Layout Map:
```
+-----------------------------------------------------------------------------------------+
| [SLICER: Job Role]        | [SLICER: Education]          | [SLICER: Recruiter Decision] |
+---------------------------+------------------------------+------------------------------+
| [CARD]                    | [CARD]                       | [CARD]          | [CARD]     |
| Total Applicants          | Total Hired                  | Hiring Rate %   | Avg Salary |
| 1,000                     | 812                          | 81.2%           | $79,995    |
+---------------------------+------------------------------+-----------------+------------+
| [CLUSTERED COLUMN CHART]                                 | [DONUT CHART]                |
| Applicants & Hired by Job Role                           | Candidates by Education      |
| X-Axis: Job Role                                         | Legend: Education            |
| Y-Axis: Total Applicants + Total Hired                   | Values: Total Applicants     |
+----------------------------------------------------------+------------------------------+
| [BAR CHART]                                                                              |
| Hiring Rate % by Experience Level                                                        |
| Y-Axis: Experience Level                                                                 |
| X-Axis: Hiring Rate %                                                                    |
| Shows: Entry=41.8% → Mid=84.4% → Senior=100%                                            |
+-----------------------------------------------------------------------------------------+
```

#### How to Build Each Visual:

**3 Slicers (Top Row):**
1. Click the **Slicer** icon in Visualizations pane (looks like a funnel).
2. Drag `Job Role` into the slicer field. Repeat for `Education` and `Recruiter Decision`.
3. Arrange them in a row at the top.

**4 KPI Cards:**
1. Click the **Card** icon (looks like `123` in a box). *If you can't find it, go to top ribbon: Insert tab → find Card.*
2. Drag `[Total Applicants]` into the card. It shows `1,000`.
3. Repeat for `[Total Hired]`, `[Hiring Rate %]`, and `[Avg Salary]`.
4. Arrange the 4 cards in a row below the slicers.

**Clustered Column Chart (Job Roles):**
1. Click the **Clustered Column Chart** icon (vertical bars side by side).
2. Drag `Job Role` to **X-axis**.
3. Drag `[Total Applicants]` to **Y-axis**.
4. Drag `[Total Hired]` to **Y-axis** (it becomes a second bar next to the first).

**Donut Chart (Education):**
1. Click the **Donut Chart** icon (circle with a hole).
2. Drag `Education` to **Legend**.
3. Drag `[Total Applicants]` to **Values**.

**Bar Chart (Hiring Rate by Experience):**
1. Click the **Clustered Bar Chart** icon (horizontal bars).
2. Drag `Experience Level` to **Y-axis**.
3. Drag `[Hiring Rate %]` to **X-axis**.
4. Turn on **Data labels**: Click the chart → Format pane (paint roller) → Data labels → On.

---

### Page 2: Candidate Qualification Analysis

#### How to Add Page 2:
1. At the bottom of your Power BI canvas, you'll see a tab that says "Page 1".
2. Click the **+** icon next to it to create a new page.
3. Double-click the new tab and rename it to "Page 2 - Qualifications".

#### Layout Map:
```
+-----------------------------------------------------------------------------------------+
| [CLUSTERED BAR CHART]                        | [CLUSTERED COLUMN CHART]                  |
| Avg Projects Count by Job Role               | Certifications: Hired vs Rejected         |
| Y-Axis: Job Role                             | X-Axis: Certifications                    |
| X-Axis: Average of Projects Count            | Y-Axis: Count of Resume_ID                |
| Legend: Recruiter Decision (Hire vs Reject)   | Legend: Recruiter Decision                 |
+----------------------------------------------+-------------------------------------------+
| [TABLE VISUAL]                                                                           |
| Candidate Summary Table                                                                  |
| Columns: Name, Job Role, Experience, Projects, Education, Certifications, Decision       |
+-----------------------------------------------------------------------------------------+
```

#### How to Build Each Visual:

**Clustered Bar Chart (Projects by Role):**
1. Click the **Clustered Bar Chart** icon (horizontal bars).
2. Drag `Job Role` to **Y-axis**.
3. Drag `Projects Count` to **X-axis**. *(Click the dropdown arrow on it → select "Average").*
4. Drag `Recruiter Decision` to **Legend**.

**Clustered Column Chart (Certifications):**
1. Click the **Clustered Column Chart** icon (vertical bars).
2. Drag `Certifications` to **X-axis**.
3. Drag `Resume_ID` to **Y-axis**. *(Click dropdown → select "Count").*
4. Drag `Recruiter Decision` to **Legend**.

**Table Visual (Candidate Summary):**
1. Click the **Table** icon (looks like a grid/spreadsheet).
2. Drag these columns one by one into the **Values** well:
   `Name`, `Job Role`, `Experience (Years)`, `Projects Count`, `Education`, `Certifications`, `Recruiter Decision`.

---

## STEP 5: Format & Polish Your Dashboard

### Color Theme (Optional but Impressive)
Go to **View** tab → **Themes** → Choose a professional theme (e.g., "Executive" or "City Park"). Or manually set:
- Hire/Positive color: **Emerald Green** (#10B981)
- Reject/Negative color: **Red** (#EF4444)
- Headers/Primary: **Navy Blue** (#1B2A4A)

### Add a Title
1. Click **Insert** tab → **Text box**.
2. Type your dashboard title: **"AI Resume Screening Analytics Dashboard"**.
3. Set font to bold, size 18, color navy blue.

### Remove Clutter
- Click each chart → **Format** pane (paint roller icon) → Turn off **Title** background if it looks heavy.
- Make all fonts consistent at **10-12 pt** size.

---

## VIVA DEFENSE CHEAT SHEET (Print This Page!)

### Q1: "Why did you choose this dataset and how did you handle missing data?"

> *"Sir/Madam, I chose this dataset because automated resume screening is a highly relevant application of Data Science in the HR technology domain. The dataset contains 1,000 candidate records with 10 features covering experience, qualifications, and recruiter outcomes.*
>
> *During data preparation in Power Query, I handled missing data in the Certifications column by using the **Replace Values** feature to convert all null values into 'None'. I also created two new columns using **Conditional Columns**: an 'Experience Level' column that groups years into Entry, Mid, and Senior tiers, and a 'Hired Flag' column that converts Hire/Reject text into 1/0 numbers for easier calculation."*

---

### Q2: "Explain your DAX measures. Why did you use CALCULATE and DIVIDE?"

> *"Sir/Madam, I created 7 DAX measures using four core functions:*
> - *`COUNTROWS` simply counts rows in the table (Total Applicants = 1,000).*
> - *`CALCULATE` is the most important DAX function — it **modifies the filter context**. For example, in my Total Hired measure, CALCULATE tells Power BI to count rows only where Recruiter Decision equals 'Hire', which gives 812.*
> - *`AVERAGE` calculates the mean of a numeric column.*
> - *`DIVIDE` performs safe division. I used DIVIDE instead of the forward slash `/` because DIVIDE **returns 0 when the denominator is zero**, preventing errors on my dashboard."*

---

### Q3: "What are the top 3 findings from your analysis?"

> *"From my dashboard visuals, three key findings emerged:*
>
> 1. ***Experience is the #1 hiring factor:*** *Candidates with 5+ years of experience had a **100% hiring rate** (all 541 were hired). Most rejections (84.6%) occurred in the 0-2 years Entry Level bracket, where the hiring rate was only 41.8%.*
>
> 2. ***Projects can compensate for low experience:*** *Junior candidates with only 1-3 years of experience who completed **7 or more portfolio projects** were hired at a 100% rate. Projects serve as practical proof of competence.*
>
> 3. ***Salary does NOT cause rejections:*** *The average salary expected by hired candidates (\$80,483) was almost identical to rejected candidates (\$77,884) — a difference of only 3.3%. This proves selection was merit-based, not cost-driven."*

---

### Q4: "In 30 seconds, what is the main takeaway?"

> *"The main takeaway is that modern hiring is shifting toward demonstrated capability. While seniority guarantees selection, early-career candidates can overcome limited tenure by building strong project portfolios. My Power BI dashboard gives HR managers clear, interactive visibility into these patterns to hire high-potential talent more effectively."*

---

## Quick Reference: Expected Numbers for Verification

| DAX Measure | Expected Value |
|:---|:---|
| Total Applicants | **1,000** |
| Total Hired | **812** |
| Total Rejected | **188** |
| Hiring Rate % | **81.2%** |
| Avg Exp Hired | **5.76 Years** |
| Avg Projects Hired | **5.65 Projects** |
| Avg Salary | **\$79,995** |

| Experience Level | Applicants | Hired | Hiring Rate |
|:---|:---|:---|:---|
| Entry Level (0-2 Yrs) | 273 | 114 | **41.8%** |
| Mid Level (3-4 Yrs) | 186 | 157 | **84.4%** |
| Senior Level (5+ Yrs) | 541 | 541 | **100.0%** |

| Job Role | Applicants | Hired | Hiring Rate |
|:---|:---|:---|:---|
| AI Researcher | 257 | 210 | 81.7% |
| Cybersecurity Analyst | 255 | 202 | 79.2% |
| Data Scientist | 255 | 205 | 80.4% |
| Software Engineer | 233 | 195 | **83.7%** |

---

## All File Locations

| File | Path |
|:---|:---|
| Original Dataset | `D:\data science\DATASETS\AI_Resume_Screening-selected-columns.csv` |
| Preprocessed Dataset | `D:\data science\DATASETS\AI_Resume_Screening_Preprocessed.csv` |
| DAX Measures Script | Open the artifact: `DAX_Measures.dax` |
| Power Query M Code | Open the artifact: `PowerQuery_Transforms.m` |
| Interactive Dashboard Preview | Open in browser: `mca_capstone_power_bi_dashboard.html` |
