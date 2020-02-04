SELECT c.name, SUM(completed_at - started_at) "average_assistance_time"
FROM assistance_requests ar
INNER JOIN students s on s.id = ar.student_id
INNER JOIN cohorts c ON c.id = s.cohort_id
GROUP BY c.name
ORDER BY 2 ASC;