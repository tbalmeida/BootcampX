SELECT a.day, count(a.id) as total_assignments
FROM assignments a
GROUP BY a.day
HAVING count(a.id) >= 10
ORDER BY a.day;