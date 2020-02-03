SELECT s.name as student, count(ss.id) as total_submissions
FROM students s
INNER JOIN assignment_submissions ss ON s.id = ss.student_id
WHERE s.end_date IS NULL
GROUP BY s.name
HAVING count(ss.id) < 100
ORDER BY s.name;