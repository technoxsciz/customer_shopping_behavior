--Q9. Are customers who are repeat buyers (more than 5 previous purchases) also likely to subscribe?

SELECT
    subscription_status,
    count(*) as total_customers
FROM customer

where
    previous_purchases >5

group by
    subscription_status
