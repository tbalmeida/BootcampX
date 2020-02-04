SELECT a.id, a.name, a.day, a.chapter, COUNT(ar.id) total_requests
FROM assignments a
INNER JOIN assistance_requests ar ON a.id = ar.assignment_id
GROUP BY 1
ORDER BY total_requests DESC;