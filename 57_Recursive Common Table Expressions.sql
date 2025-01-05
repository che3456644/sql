

-- Recursive CTE
-- Factorial of a given number

with [R CTE] as (
-- Anchor Query 
select 1 as n

union all 

-- Recursive Query 
select n+1 from [R CTE] where n<=5

)

---- FACTORIAL ----

select exp(sum(log(n))) [Factorial] from [R CTE]