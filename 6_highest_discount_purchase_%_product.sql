--Q6. Which 5 products have the highest percentage of purchases with discounts applied?

SELECT
    item_purchased,
    round(100*sum(case when discount_applied = 'Yes' then 1 else 0 end) / count(*),2) as purchase_if_discount  

FROM customer

GROUP BY
    item_purchased

ORDER BY
    purchase_if_discount DESC
LIMIT 5;