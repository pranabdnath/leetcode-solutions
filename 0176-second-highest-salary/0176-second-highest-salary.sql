# Write your MySQL query statement below

/* Easy Method - Distinct + Offset + Limit
SELECT 
     (SELECT DISTINCT Salary
     FROM Employee
     ORDER BY Salary
     LIMIT 1 OFFSET 1)
     AS SecondHighestSalary

### This method works with duplicates too but slightly lower than LIMIT func & cannot generate Nth Salary
*/
SELECT MAX(Salary) AS SecondHighestSalary
FROM Employee
WHERE salary <(
    Select Max(salary)
    From Employee
);

/*
### Window Function

SELECT Salary AS SecondHighestSalary
FROM (
    SELECT Salary,
           DENSE_RANK() OVER (ORDER BY Salary DESC) AS rnk
    FROM Employee
) Ranked_salary
WHERE rnk = 2;

###using functions but won't work in leetcode

Delimiter $$
Create function getNthHighestSalary(2 int)
Return INT
Deterministic 
Begin
    Return (
        Select Distinct Salary
        From Employee
        Order by Salary desc
        limit 1 offset n-1
    );
end $$
Delimiter ;
*/