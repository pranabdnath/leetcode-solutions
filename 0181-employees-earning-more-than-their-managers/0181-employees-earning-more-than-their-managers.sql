/* Basically we need to find out the salary of an employee who's salary is greated than the manager*/
/* So for this we need to map the employee id and amanger id so that sql can understand who is the manager here.*/



select e.name as employee
from employee e /* this is the employee table*/
join employee m /* this is the manager table*/
    on e.managerId=m.id /* what we are doing here is that we are mapping the both id's to find the manager*/
/* so far we have done, now lets face the objective
 to fine the salary of an emp> manager*/

where e.salary>m.salary;