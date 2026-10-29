-- CREATE DATABASE hr_attrition_analysis;
SELECT COUNT(*) AS total_employees
FROM `hr_attrition_analysis`.`hr-employee-attrition-cleaned`;
SELECT
    Department,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        AS employees_left,
    ROUND(
        100.0 * SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS attrition_rate_percent
FROM `hr_attrition_analysis`.`hr-employee-attrition-cleaned`
GROUP BY Department
ORDER BY attrition_rate_percent DESC;
SELECT
    OverTime,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        AS employees_left,
    ROUND(
        100.0 * SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS attrition_rate_percent
FROM `hr_attrition_analysis`.`hr-employee-attrition-cleaned`
GROUP BY OverTime
ORDER BY attrition_rate_percent DESC;
SELECT
    JobRole,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        AS employees_left,
    ROUND(
        100.0 * SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS attrition_rate_percent
FROM `hr_attrition_analysis`.`hr-employee-attrition-cleaned`
GROUP BY JobRole
ORDER BY attrition_rate_percent DESC;
SELECT
    Salary_Band,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        AS employees_left,
    ROUND(
        100.0 * SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS attrition_rate_percent
FROM (
    SELECT
        Attrition,
        CASE
            WHEN MonthlyIncome <= 3000 THEN 'Low (<=3000)'
            WHEN MonthlyIncome <= 5000 THEN 'Lower-middle (3001-5000)'
            WHEN MonthlyIncome <= 8000 THEN 'Upper-middle (5001-8000)'
            ELSE 'High (>8000)'
        END AS Salary_Band
    FROM `hr_attrition_analysis`.`hr-employee-attrition-cleaned`
) AS employee_salary
GROUP BY Salary_Band
ORDER BY MIN(
    CASE Salary_Band
        WHEN 'Low (<=3000)' THEN 1
        WHEN 'Lower-middle (3001-5000)' THEN 2
        WHEN 'Upper-middle (5001-8000)' THEN 3
        ELSE 4
    END
);
SELECT
    JobSatisfaction,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        AS employees_left,
    ROUND(
        100.0 * SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS attrition_rate_percent
FROM `hr_attrition_analysis`.`hr-employee-attrition-cleaned`
GROUP BY JobSatisfaction
ORDER BY JobSatisfaction;