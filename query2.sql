-- Select distinct item names with at least one rating of 4 or more stars
SELECT DISTINCT i.item_name
FROM item i
JOIN rating r ON i.item_id = r.item_id
WHERE r.rating_stars >= 4;
