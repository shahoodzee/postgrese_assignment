-- Select distinct item names with at least one rating of 4 or more stars
--SET lc_monetary = 'en_GB';
SELECT DISTINCT i.item_name, i.item_id,i.item_price, i.item_manufacturer
FROM item i
JOIN rating r ON i.item_id = r.item_id
WHERE r.rating_stars >= 4;
