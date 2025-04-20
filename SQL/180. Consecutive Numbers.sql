SELECT DISTINCT n.num AS ConsecutiveNums
FROM logs as n JOIN logs as l JOIN logs as l2
WHERE n.id = l.id+1 and l.id = l2.id+1 and n.num = l.num and l2.num = n.num
