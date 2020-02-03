SELECT sum(ss.duration) as total_time
FROM students s
INNER JOIN assignment_submissions ss ON s.id = ss.student_id
WHERE s.name = 'Ibrahim Schimmel';