-- Average age of customers per category
select p.category , avg(c.age) as avg_age from salestransaction s join customerprofiles c on s.CustomerID = c.customerid
join productinventory p on p.ProductID = s.ProductID
group by p.category