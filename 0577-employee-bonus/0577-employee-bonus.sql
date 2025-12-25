# find the employee who has a bonus less than 1000.
# and also the employee who haven't received any

select e.name, e.bonus
from employee e
left join bonus
        on e.empId = b.empId
where b.bonus < 1000
or b.bonus is null;