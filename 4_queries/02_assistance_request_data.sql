SELECT t.name "teacher", s.name "student", a.name "assignment", completed_at - started_at "duration"
FROM teachers t 
INNER JOIN assistance_requests ar ON t.id = ar.teacher_id
INNER JOIN students s ON s.id = ar.student_id
INNER JOIN assignments a ON a.id = ar.assignment_id
ORDER BY 4;