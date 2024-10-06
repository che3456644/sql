

select * from Employees_US

-- wildcards
-- 1) % It may represent 0,1 or multiple characters
-- 2) _ it exactly represent only 1 character

-- 1) find employees whose last name starts with 'S'
select * from Employees_US where LastName like 'S%'

-- 2) find employees whose department contains 'Eng'
select * from Employees_US where Department like '%Eng%'

-- 3) find employees whose first name ends with 'a'
select * from Employees_US where FirstName like '%a'

-- 4) find employees whose last name is exactly 5 characters long 
select * from Employees_US where LastName like '_____'

-- 5) find employees whose first name starts with 'C' or 'D' 
select * from Employees_us where FirstName  like '[CD]%'

-- 6) find employees whose last name contains 'son'
select * from employees_us where lastname like '%son'

-- 7) find employees whose first name contains the letter 'i' as the second character
select * from employees_us where firstname like '_i%'

-- 8) find employees whose last name starts with any letter between 'A' and 'L'
select * from employees_us where lastname like '[A-L]%'

-- 9) find employees whose first name does not contain 'o'
select * from employees_us where firstname not like '%o%'

-- 10) find employees whose last name ends with 'a' and is exactly 5 characters long
select * from employees_us where lastname like '____a'

-- 11) find employees whose department start with 'Mar' and ends with 'ing'
select * from employees_us where department like 'mar%ing'

-- 12) find employees whose first name has an 'a' in the third position
select * from employees_us where firstname like '__a%'

-- 13) find employees whose last name start with 'Br' or 'Bl'
select * from employees_us where lastname like 'br%' or lastname like 'bl'

-- 14) find employees whose first name start with vowel
select * from employees_us where firstname like '[aeiou]%'

--15) find employees whose first name does not start with a consonant
select * from employees_us where firstname not like '[^aeiou]%'

--15) find employees whose first name start with a consonant
select * from employees_us where firstname like '[^aeiou]%'