SELECT *
FROM cinema
WHERE MOD(id, 2) <> 0
AND description <> "boring"
ORDER BY rating DESC;
