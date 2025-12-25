## Key factor: REGEXP '^[A-Za-z0-9_]+@[A-Za-z]+\\.com$'

# Objective:

 #1. Get all the valid emiil ids
  /* lets assume this is a valid mail id = "xyz90_@gmail.com"
   which is having  
                        staring 
                        a-z | numerical values | and also underscore "_"
                        mid 
                        "@"
                        ending
                        ".com"
   
# Approach:
 with REGEXP
        start of the string ^
        mid @ which is a literal
        and to end this literal we need to put \\ inverted slash before using ".com"
        end of the string $
 */
# Solution

Select user_id, email
from Users u
where email regexp '^[A-Za-z0-9_]+@[A-Za-z]+\\.com$'
order by user_id asc;