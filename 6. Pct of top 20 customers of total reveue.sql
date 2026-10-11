-- Pct of top 20 of total reveue
use retail;
with top_customer as(
select customerid  , sum(quantitypurchased*price) as revenue , 
row_number() over(order by sum(quantitypurchased*price) desc ) as rn
from salestransaction
group by customerid),
top_twenty as (select sum(revenue) as revenue from top_customer where rn<=20)

select revenue as top_twnety_revenue ,(select sum(quantitypurchased*price) from salestransaction) as total_revenue,
revenue/(select sum(quantitypurchased*price) from salestransaction) *100 as pct_of_total 
from top_twenty