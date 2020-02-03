SELECT s.name student, avg(ss.duration) average_assignment_duration, avg(a.duration) average_estimated_duration 
FROM students s
INNER JOIN assignment_submissions ss ON s.id = ss.student_id
INNER JOIN assignments a ON a.id = ss.assignment_id
WHERE s.end_date IS NULL
GROUP BY s.name
HAVING avg(ss.duration) < avg(a.duration)
ORDER BY avg(ss.duration) ASC;