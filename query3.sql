-- Select item information with average star rating, most recent rating date, and order by average star rating descending (excluding items with no ratings)
SELECT 
    i.item_name,
    ROUND(AVG(r.rating_stars)::numeric, 2) AS average_star_rating,
    MAX(r.rating_date) AS most_recent_rating_date
FROM 
    item i
LEFT JOIN 
    rating r ON i.item_id = r.item_id
GROUP BY 
    i.item_id, i.item_name
HAVING 
    COUNT(r.rating_id) > 0  -- Exclude items with no ratings
ORDER BY 
    average_star_rating DESC;
