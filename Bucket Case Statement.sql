SELECT name, salary,
CASE WHEN salary > 155000 THEN 'Executive'
           WHEN salary <= 155000 AND salary > 110000 THEN 'High Paid'
           WHEN salary <= 110000 AND salary > 85000 THEN 'Above Average'
           WHEN salary <= 85000 THEN 'Low Pay'
           ELSE 'Unknown' END as SalaryCategory
FROM employees
ORDER BY salary DESC