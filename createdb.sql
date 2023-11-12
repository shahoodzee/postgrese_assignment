-- Create item table
CREATE TABLE item (
    item_id SERIAL PRIMARY KEY,
    item_name CHAR(20) NOT NULL,
    item_price MONEY NOT NULL,
    item_manufacturer CHAR(20) NOT NULL
);

-- Create customer table
CREATE TABLE customer (
    customer_id SERIAL PRIMARY KEY,
    customer_name CHAR(20) NOT NULL,
    customer_address VARCHAR(50) NOT NULL
);

-- Create rating table
CREATE TABLE rating (
    rating_id SERIAL PRIMARY KEY,
    customer_id INTEGER REFERENCES customer(customer_id) ON DELETE CASCADE,
    item_id INTEGER REFERENCES item(item_id) ON DELETE CASCADE,
    rating_date DATE NOT NULL,
    rating_stars INTEGER CHECK (rating_stars BETWEEN 1 AND 5) NOT NULL
);

-- Create invoice table
CREATE TABLE invoice (
    invoice_id SERIAL PRIMARY KEY,
    item_id INTEGER REFERENCES item(item_id) ON DELETE CASCADE,
    customer_id INTEGER REFERENCES customer(customer_id) ON DELETE CASCADE,
    item_quantity INTEGER NOT NULL,
    total_cost MONEY NOT NULL
);
