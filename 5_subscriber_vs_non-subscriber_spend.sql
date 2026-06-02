/* Q5. Do subscribed customers spend more? Compare average spend and total revenue 
between subscribers and non-subscribers. */

SELECT
    subscription_status,
    count(*) as total_customers,
    round(avg(purchase_amount),2) as average_spend,
    sum(purchase_amount) as total_revenue


FROM customer

GROUP BY 
    subscription_status

ORDER BY total_revenue DESC,average_spend DESC;
   
