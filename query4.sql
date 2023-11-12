-- Select customer name, item name, and the highest star rating given
SELECT
    c.customer_name,
    i.item_name,
    MAX(r.rating_stars) AS highest_rating
FROM
    rating r
JOIN
    customer c ON r.customer_id = c.customer_id
JOIN
    item i ON r.item_id = i.item_id
WHERE
    (r.customer_id, r.item_id, r.rating_stars) IN (
        SELECT
            customer_id,
            item_id,
            MAX(rating_stars) AS max_rating
        FROM
            rating
        GROUP BY
            customer_id,
            item_id
        HAVING
            COUNT(*) > 1 AND MAX(rating_stars) > MIN(rating_stars)
    )
GROUP BY
    c.customer_name, i.item_name;
