
-- Insert data into item table
INSERT INTO item (item_name, item_price, item_manufacturer)
VALUES ('laptop', '1022.99', 'Samsung'),
       ('keyboard', '22.99', 'Samsung'),
       ('mouse', '11.99', 'HP'),
       ('monitor', '422.98', 'Dell'),
       ('phone', '477.50', 'Apple');

-- Insert data into customer table
INSERT INTO customer (customer_name, customer_address)
VALUES ('wilma', '1 Somewhere St'),
       ('bob', '27 Overboard Close'),
       ('fred', '19 The Avenue'),
       ('petal', '2a Rainbow Road'),
       ('mindy', 'Flat 7, Cloud View');

-- Insert data into rating table
INSERT INTO rating (item_id, customer_id, rating_date, rating_stars)
VALUES (1, 1, '2022-09-28', 5),
       (3, 2, '2022-09-01', 2),
       (3, 2, '2022-09-12', 4),
       (3, 2, '2022-09-30', 1),
       (4, 3, '2022-09-19', 3),
       (4, 3, '2022-09-07', 2),
       (5, 5, '2022-09-12', 3),
       (5, 5, '2022-09-12', 5);

       

-- Insert data into invoice table
INSERT INTO invoice (item_id, customer_id, item_quantity, total_cost)
VALUES (5, 1, 2, '955.00'),
       (5, 2, 10, '4775.00'),
       (1, 2, 2, '2045.98'),
       (2, 3, 1, '22.99'),
       (3, 4, 4, '47.96');


