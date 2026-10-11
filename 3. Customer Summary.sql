-- Customer Summary
select CustomerID, count(transactionid) as Transactions, 
round(sum(QuantityPurchased*price),2) as revenue , sum(QuantityPurchased) as quantity,
round(sum(quantitypurchased*price)/sum(quantitypurchased),2) as avg_revenue,MIN(transaction_date) AS FirstPurchase,
MAX(transaction_date) AS LastPurchase,
    DATEDIFF(
        MAX(transaction_date),
        MIN(transaction_date)
    ) AS DaysBetweenPurchases
FROM salestransaction
GROUP BY CustomerID
HAVING DaysBetweenPurchases > 0
order by revenue desc