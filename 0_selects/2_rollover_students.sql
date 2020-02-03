SELECT s.name as student_name, s.start_date as student_start, c.name as cohort_name, c.start_date as cohort_start
FROM students s 
INNER JOIN cohorts c ON s.cohort_id = c.id
WHERE s.start_date <> c.start_date;