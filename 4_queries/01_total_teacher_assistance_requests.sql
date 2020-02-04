SELECT count(ar.id) total_assistances, s.name
FROM students s
INNER JOIN assistance_requests ar ON s.id = ar.student_id
WHERE s.name = 'Elliot Dickinson'
GROUP BY s.name