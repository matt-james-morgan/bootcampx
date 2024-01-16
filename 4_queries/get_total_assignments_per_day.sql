SELECT day, count(*) as total_assignments_of_day, sum(assignments.duration) as duration
FROM assignments
GROUP BY day
ORDER BY day;