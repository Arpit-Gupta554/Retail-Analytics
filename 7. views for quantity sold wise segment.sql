-- view for quantity sold wise segment
create view segment_count as 
select customerid , sum(quantitypurchased) as total_purchase , 
case when sum(quantitypurchased) between 1 and 10 then "Low"
when sum(quantitypurchased) between 11 and 30 then "Med"
else "High" end as CustomerSegment
from salestransaction
group by customerid



