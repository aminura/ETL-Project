-- Create tables for raw data to be loaded
DROP TABLE avocado_db;
CREATE TABLE avocado_db (
id SERIAL PRIMARY KEY,
avocado_price TEXT,
city TEXT
);

DROP TABLE housePrices_db;
CREATE TABLE housePrices_db (
house_id SERIAL PRIMARY KEY,
metro_city TEXT,
md_house_price TEXT,
);

-- Joins tables
SELECT avocado_db.id, avocado_db.city, avocado_db.price, housePrices_db.md_house_price
FROM customer_name
JOIN customer_location
ON avocado_db.city = housePrices_db.metro_city;

-- SELECT * FROM avocado_db
-- UNION
-- SELECT * FROM housePrices_db;