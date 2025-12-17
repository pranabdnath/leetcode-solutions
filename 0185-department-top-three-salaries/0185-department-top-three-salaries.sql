# Write your MySQL query statement below
SELECT 
    d.name AS Department,
    e.name AS Employee,
    e.salary AS Salary
FROM Employee e
JOIN Department d 
    ON e.departmentId = d.id
LEFT JOIN (
    SELECT DISTINCT departmentId, salary
    FROM Employee
) s 
    ON s.departmentId = e.departmentId
   AND s.salary > e.salary
GROUP BY 
    e.id, e.name, e.salary, d.name
HAVING COUNT(s.salary) < 3;