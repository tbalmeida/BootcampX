SELECT sum(ss.duration) as total_duration
FROM students s
INNER JOIN cohorts c ON s.cohort_id = c.id
INNER JOIN assignment_submissions ss ON s.id = ss.student_id
WHERE c.name = 'FEB12';