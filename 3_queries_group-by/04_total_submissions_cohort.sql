SELECT c.name as cohort, count(ss.id) as total_submissions
FROM cohorts c
INNER JOIN students s ON c.id = s.cohort_id
INNER JOIN assignment_submissions ss ON s.id = ss.student_id
GROUP BY c.name
ORDER BY count(ss.id) DESC;