/*Q7. Segment customers into New, Returning, and Loyal based on their total 
number of previous purchases, and show the count of each segment. */

with customer_type AS (
    SELECT
    customer_id,
    previous_purchases,
    case 
        when previous_purchases <= 1 then 'New'
        when previous_purchases between 2 and 10 then 'Returning'
        else 'Loyal'
    end as customer_segment
    FROM customer
    )

select
    customer_segment as segment,
    count(*) as customer_count
from customer_type
group by customer_segment;