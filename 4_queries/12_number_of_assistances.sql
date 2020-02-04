SELECT DISTINCT t.name teacher, c.name cohort, count(ar.id) total_assistances
FROM teachers t
INNER JOIN assistance_requests ar ON t.id = ar.teacher_id
INNER JOIN students s ON s.id = ar.student_id AND ar.teacher_id = t.id
INNER JOIN cohorts c ON c.id = s.cohort_id
WHERE c.name = 'JUL02'
GROUP BY 1, 2
ORDER BY 1;