SELECT s.name student, avg(ss.duration) average_assignment_duration 
FROM students s
INNER JOIN assignment_submissions ss ON s.id = ss.student_id
WHERE s.end_date IS NULL
GROUP BY s.name
ORDER BY avg(ss.duration) DESC;