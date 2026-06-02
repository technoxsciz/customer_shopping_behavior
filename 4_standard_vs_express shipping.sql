--Q4. Compare the average Purchase Amounts between Standard and Express Shipping. 

select shipping_type, 
ROUND(AVG(purchase_amount),2)
from customer
where shipping_type in ('Standard','Express')
group by shipping_type;