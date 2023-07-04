SELECT students.name as student
     , sum(a.duration) / count(a.*) as average_assignment_duration
FROM assignment_submissions as a
JOIN students ON students.id = student_id
WHERE students.end_date IS NULL
GROUP BY student
ORDER BY average_assignment_duration DESC;