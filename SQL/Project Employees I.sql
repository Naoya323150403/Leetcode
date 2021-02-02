SELECT 
p.project_id, 

CAST(
    ROUND(SUM(e.experience_years*1.0) / COUNT(e.employee_id), 2)
    as DECIMAL(10,2)
    )
    as average_years
FROM Project p LEFT JOIN Employee e
ON p.employee_id = e.employee_id
GROUP BY p.project_id