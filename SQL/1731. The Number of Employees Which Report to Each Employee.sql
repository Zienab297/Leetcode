SELECT m.employee_id, m.name, COUNT(e.reports_to) as reports_count, 
            ROUND(AVG(e.age)) as average_age
FROM employees as m  JOIN employees as e
ON m.employee_id = e.reports_to
GROUP BY employee_id
ORDER BY employee_id;
