SELECT a.day, count(a.id) as total_assignments
FROM assignments a
GROUP BY a.day
ORDER BY a.day;