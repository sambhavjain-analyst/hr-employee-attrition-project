
# HR Employee Attrition & Workforce Analytics

## 1. Project Overview

This project analyzes employee attrition patterns using Python, Pandas, MySQL, and Power BI. The objective is to understand which employee groups have higher observed attrition rates and present the findings through an interactive dashboard.

## 2. Business Objectives

- Calculate the overall employee attrition rate.
- Compare attrition across departments and job roles.
- Investigate attrition patterns associated with overtime.
- Compare attrition across monthly income bands.
- Examine the relationship between job satisfaction and attrition.
- Present key findings through an interactive Power BI dashboard.

## 3. Tools and Technologies

- **Python:** Data inspection and analysis
- **Pandas:** Data cleaning and aggregation
- **Matplotlib:** Data visualization
- **Jupyter Notebook:** Analysis workflow
- **MySQL:** SQL-based analysis and validation
- **Power BI Desktop:** Interactive dashboard and KPI reporting
- **DAX:** Measures and calculated columns

## 4. Dataset Description

The project uses a publicly available IBM HR Analytics sample dataset.

- Original records: 1,470 employees
- Original columns: 35
- Cleaned columns: 31
- Duplicate rows identified: 0
- Missing values identified: 0

The dataset contains employee attributes such as age, department, job role, monthly income, overtime, job satisfaction, years at company, and attrition status.

## 5. Data Cleaning

The following steps were completed in Python:

1. Loaded the original CSV dataset into Pandas.
2. Inspected data types, missing values, duplicate records, and column uniqueness.
3. Confirmed that no duplicate rows or missing values were identified.
4. Created a separate copy of the original dataset for cleaning.
5. Removed unnecessary whitespace from text columns.
6. Removed four columns from the cleaned analytical dataset: `EmployeeCount`, `EmployeeNumber`, `Over18`, and `StandardHours`.
7. Saved the cleaned dataset to `data/processed/HR-Employee-Attrition-Cleaned.csv`.

The original dataset was preserved in the raw data folder.

## 6. Key Performance Indicators

| KPI | Result |
|---|---:|
| Total Employees | 1,470 |
| Employees Who Left | 237 |
| Employees Who Stayed | 1,233 |
| Overall Attrition Rate | 16.12% |

The overall attrition rate is calculated as employees who left divided by total employees.

## 7. Exploratory Data Analysis

### 7.1 Attrition by Department

| Department | Employees | Employees Who Left | Attrition Rate |
|---|---:|---:|---:|
| Sales | 446 | 92 | 20.63% |
| Human Resources | 63 | 12 | 19.05% |
| Research & Development | 961 | 133 | 13.84% |

Sales had the highest observed department-level attrition rate, followed by Human Resources.

### 7.2 Attrition by Overtime

| Overtime | Employees | Employees Who Left | Attrition Rate |
|---|---:|---:|---:|
| Yes | 416 | 127 | 30.53% |
| No | 1,054 | 110 | 10.44% |

Employees in the overtime group had a substantially higher observed attrition rate than employees who did not work overtime.

### 7.3 Attrition by Job Role

The highest observed job-role attrition rates were:

| Job Role | Employees Who Left | Attrition Rate |
|---|---:|---:|
| Sales Representative | 33 | 39.76% |
| Laboratory Technician | 62 | 23.94% |
| Human Resources | 12 | 23.08% |
| Sales Executive | 57 | 17.48% |
| Research Scientist | 47 | 16.10% |

Sales Representatives had the highest observed attrition rate among the job roles in this dataset.

### 7.4 Attrition by Monthly Income Band

| Monthly Income Band | Employees | Employees Who Left | Attrition Rate |
|---|---:|---:|---:|
| Low (≤3,000) | 395 | 113 | 28.61% |
| Lower-middle (3,001–5,000) | 354 | 50 | 14.12% |
| Upper-middle (5,001–8,000) | 340 | 34 | 10.00% |
| High (>8,000) | 381 | 40 | 10.50% |

The lowest monthly-income band had the highest observed attrition rate.

### 7.5 Attrition by Job Satisfaction

| Job Satisfaction Level | Employees | Employees Who Left | Attrition Rate |
|---|---:|---:|---:|
| 1 | 289 | 66 | 22.84% |
| 2 | 280 | 46 | 16.43% |
| 3 | 442 | 73 | 16.52% |
| 4 | 459 | 52 | 11.33% |

The highest satisfaction level had a lower observed attrition rate than the lowest satisfaction level.

## 8. SQL Analysis

The following SQL analyses were completed in MySQL:

- Total employee count validation
- Department-wise employee attrition
- Attrition comparison by overtime
- Job-role attrition comparison
- Attrition across monthly income bands
- Attrition by job satisfaction level

SQL results were compared against the corresponding Python calculations to check consistency.

## 9. Power BI Dashboard

The dashboard includes three KPI cards:

- Total Employees
- Employees Left
- Attrition Rate

It also includes five analytical charts:

- Attrition Rate by Department
- Attrition Rate by Overtime
- Attrition Rate by Job Role
- Attrition Rate by Salary Band
- Attrition Rate by Job Satisfaction

Department and Overtime slicers allow users to interactively filter the report.

## 10. Business Recommendations

Based on the patterns observed in this sample:

1. Investigate workload, staffing, and retention challenges in the Sales department.
2. Review overtime frequency and employee workload distribution.
3. Examine retention challenges among Sales Representatives and Laboratory Technicians.
4. Review compensation, career growth, and employee support across income bands.
5. Continue to monitor job satisfaction and employee retention together.

These recommendations identify areas for further investigation, not confirmed causes of employee attrition.

## 11. Limitations

- The dataset is a sample and may not represent every organization.
- The analysis is descriptive and does not establish causation.
- Employee attrition may be influenced by multiple factors not fully captured in the dataset.
- The income bands used in this project were created for exploratory analysis.

## 12. Conclusion

This project demonstrates an end-to-end HR analytics workflow, including data cleaning, exploratory analysis, SQL validation, KPI development, and interactive Power BI reporting.

The analysis identified notable attrition differences by department, overtime status, job role, monthly income, and job satisfaction. The findings provide a starting point for further investigation into employee retention.

## 13. Project Structure

```text
hr_employee_attrition_project/
├── dashboard/
│   └── HR_Employee_Attrition_Analytics.pbix
├── data/
│   ├── raw/
│   │   └── IBM-HR-Analytics-Employee-Attrition.csv
│   └── processed/
│       └── HR-Employee-Attrition-Cleaned.csv
├── notebooks/
│   └── 01_HR_Data_Cleaning.ipynb
├── sql/
│   └── hr_attrition_analysis.sql
├── report/
│   └── HR_Employee_Attrition_Analysis_Report.md
├── README.md
└── requirements.txt
```

## 14. Disclaimer

This project uses a publicly available sample HR dataset for educational and portfolio purposes. The observed relationships are descriptive and should not be interpreted as proof of causal factors behind employee attrition.
