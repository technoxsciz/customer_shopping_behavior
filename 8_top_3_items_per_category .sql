--Q8. What are the top 3 most purchased products within each category? 

with item_counts AS(
    SELECT
    category,
    item_purchased,
    count(*) as  total_orders,
    row_number() OVER (PARTITION BY category ORDER BY count(*) desc) as item_rank
    

    FROM customer

    GROUP BY category, item_purchased
    
)

SELECT
category,
item_purchased,
total_orders,
item_rank

from item_counts

WHERE item_rank <=3