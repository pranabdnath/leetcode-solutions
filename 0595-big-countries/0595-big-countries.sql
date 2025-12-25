# find the big countries

#cond: 1. they should be havi area of >= 3000000 km2
# or population >= 25000000

#lets solve this:

select name, population, area
from world
         where population >= 25000000
         or area >= 3000000
order by name;