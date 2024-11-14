

select * from ProfitData

-- To add a new column that shows next month's profit for each product 

select *, LEAD(Profit) over(partition by product order by monthnumber) [Next Month Profit ]
from ProfitData

-- We don't want product column in the output but we want each month's profit to be show by monthnumber & monthname, also a new column should be added to show next month's total profit

select MonthNumber,MonthName,sum(Profit) [Total Profit],
lead(sum(profit)) over(order by monthnumber) [Next Month's Total Profit]
from ProfitData
group by MonthNumber,MonthName
order by MonthNumber