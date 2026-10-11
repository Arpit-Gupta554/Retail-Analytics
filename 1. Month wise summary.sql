-- Month wise summary
select * from salestransaction;
select month(transaction_date) as month , count(transactionid) as total_transactions , sum(quantitypurchased) as total_quantity_sold,
round(avg(quantitypurchased*price),2) as avg_transaction_value , round(sum(quantitypurchased*price),2) as total_revenue
from salestransaction
group by month(transaction_date)
