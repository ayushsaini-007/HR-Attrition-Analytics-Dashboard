SELECT COUNT(*) AS total_employees
FROM hr_employee;

SELECT COUNT(*) AS employees_left
FROM hr_employee
WHERE attrition = 'Yes';

SELECT 
    ROUND(
        (SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END)::decimal 
         / COUNT(*) ) * 100, 2
    ) AS attrition_rate
FROM hr_employee;

SELECT 
    department,
    COUNT(*) AS total,
    SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) AS attrition_count
FROM hr_employee
GROUP BY department
ORDER BY attrition_count DESC;

SELECT 
    jobrole,
    COUNT(*) AS total,
    SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) AS attrition_count
FROM hr_employee
GROUP BY jobrole
ORDER BY attrition_count DESC;

SELECT 
    jobrole,
    ROUND(AVG(monthlyincome), 2) AS avg_income
FROM hr_employee
GROUP BY jobrole
ORDER BY avg_income DESC;

SELECT 
    CASE 
        WHEN age < 25 THEN 'Below 25'
        WHEN age BETWEEN 25 AND 35 THEN '25-35'
        WHEN age BETWEEN 36 AND 45 THEN '36-45'
        ELSE 'Above 45'
    END AS age_group,
    COUNT(*) AS total,
    SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) AS attrition_count
FROM hr_employee
GROUP BY age_group
ORDER BY age_group;

