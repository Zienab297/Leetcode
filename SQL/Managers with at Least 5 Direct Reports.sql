SELECT m.name
FROM employee AS e
JOIN employee AS m
ON m.id = e.managerId
GROUP BY m.id
HAVING COUNT(e.managerId) >= 5;
