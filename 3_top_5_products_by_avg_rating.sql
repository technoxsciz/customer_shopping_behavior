-- Q3. Which are the top 5 products with the highest average review rating?

SELECT
    item_purchased,
    round(avg(review_rating) :: numeric , 2) as avg_rating

FROM
    customer 

group by item_purchased

order by
avg_rating desc
limit 5

