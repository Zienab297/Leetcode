WITH Cumulative AS (
    SELECT turn, person_id, person_name, weight,
        SUM(weight) OVER (ORDER BY turn) AS total
    FROM queue
)
SELECT person_name
FROM Cumulative
WHERE total <= 1000
ORDER BY turn DESC LIMIT 1;
