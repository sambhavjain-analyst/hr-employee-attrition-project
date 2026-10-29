
# HR Employee Attrition & Workforce Analytics

## Project Overview
An end-to-end HR analytics project exploring employee attrition patterns using Python, SQL, and Power BI.

The objective is to identify employee groups with higher observed attrition rates and communicate findings through an interactive dashboard.

## Dataset
- Original records: 1,470 employees
- Original columns: 35
- Cleaned columns: 31
- Duplicate rows: 0
- Missing values after cleaning: 0

The dataset is a publicly available IBM HR Analytics sample dataset.

## Tools & Technologies
- Python
- Pandas
- Matplotlib
- Jupyter Notebook
- MySQL
- Power BI Desktop
- DAX

## Key Findings
- Total employees analyzed: 1,470
- Employees who left: 237
- Overall attrition rate: 16.12%
- Sales department attrition rate: 20.63%
- Overtime employees attrition rate: 30.53%, compared with 10.44% for employees without overtime
- Sales Representatives had the highest observed job-role attrition rate at 39.76%
- The lowest monthly-income band had an attrition rate of 28.61%

These results describe patterns in the sample and do not establish that any single factor causes attrition.

## Dashboard
The Power BI dashboard contains:
- Total Employees KPI
- Employees Left KPI
- Attrition Rate KPI
- Attrition rate by department
- Attrition rate by overtime
- Attrition rate by job role
- Attrition rate by salary band
- Attrition rate by job satisfaction
- Department and overtime slicers

## Project Structure
```text
hr_employee_attrition_project/
├── dashboard/
├── data/
│   ├── raw/
│   └── processed/
├── notebooks/
│   └── 01_HR_Data_Cleaning.ipynb
├── sql/
│   └── hr_attrition_analysis.sql
├── report/
├── README.md
└── requirements.txt
```

## How to Reproduce
1. Install the Python dependencies listed in `requirements.txt`.
2. Run `notebooks/01_HR_Data_Cleaning.ipynb` from top to bottom.
3. Execute the queries in `sql/hr_attrition_analysis.sql` using MySQL after importing the cleaned CSV.
4. Open the Power BI file from the `dashboard/` folder.

## Disclaimer
This project uses a sample HR dataset for educational and portfolio purposes. The results are descriptive and should not be interpreted as proof of causation or generalized automatically to all organizations.
