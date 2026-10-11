-- category wise performance
select p.Category , sum(s.quantitypurchased) as TotalUnitsSold , round(sum(s.quantitypurchased*s.price),2) as TotalSales 
from salestransaction s join productinventory p on s.productid = p.productid
group by p.category
order by sum(s.quantitypurchased*s.price) desc