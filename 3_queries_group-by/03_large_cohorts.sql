SELECT c.name as cohort_name, count(s.id) as student_count
FROM cohorts c
INNER JOIN students s ON c.id = s.cohort_id
GROUP BY c.name
HAVING count(s.id) >= 18
ORDER BY c.name;