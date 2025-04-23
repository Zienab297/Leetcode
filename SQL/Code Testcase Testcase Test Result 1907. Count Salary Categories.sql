SELECT 'Low Salary' as category, COUNT(IF(income<20000, 1, NULL)) AS accounts_count
FROM accounts

UNION ALL 
SELECT 'Average Salary' as category, 
        COUNT(IF(income BETWEEN 20000 AND 50000, 1, NULL)) AS accounts_count
FROM accounts

UNION ALL 
SELECT 'High Salary' as category, COUNT(IF(income>50000, 1, NULL)) AS accounts_count
FROM accounts
