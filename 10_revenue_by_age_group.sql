-- Q10. What is the revenue contribution of each age group? 

SELECT 
    age_group,
    sum(purchase_amount) as total_revenue
FROM customer

GROUP BY
    age_group
ORDER BY
    total_revenue DESC