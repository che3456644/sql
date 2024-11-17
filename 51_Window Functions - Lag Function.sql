

select * from ProfitData

-- to add a new column that previous month's profit for each product 
select *, lag(Profit) over(partition by product order by monthnumber) [Lag function]
from ProfitData

-- We don't want product column in the output but we want each month's profit to be show by monthnumber & monthname, also a new column should be added to show previous month's total profit
select MonthNumber,MonthName,sum(Profit) [Total Profit],
lag(sum(profit)) over(order by monthnumber) [Previous Month's Total Profit]
from ProfitData
group by MonthNumber,MonthName
order by MonthNumber
