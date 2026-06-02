--Q2. Which customers used a discount but still spent more than the average purchase amount? 

SELECT
    customer_id,
    purchase_amount

FROM customer

WHERE
     discount_applied = 'Yes' and 
     purchase_amount >=
      (select AVG(purchase_amount) from customer)