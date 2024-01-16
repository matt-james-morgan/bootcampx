SELECT cohorts.name as name, SUM(assistance_requests.completed_at-assistance_requests.started_at) as average_assistance_time
FROM assistance_requests
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = student_id
GROUP BY cohorts.name
LIMIT 10;