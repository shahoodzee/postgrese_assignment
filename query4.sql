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
    r.item_id IN (
        SELECT
            item_id
        FROM
            rating
        GROUP BY
            item_id
        HAVING
            COUNT(*) > 1
    )
GROUP BY
    c.customer_name, i.item_name
ORDER BY
    c.customer_name, i.item_name;
