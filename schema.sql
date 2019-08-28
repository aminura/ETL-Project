-- Create tables for raw data to be loaded
DROP TABLE avocado;
CREATE TABLE avocado (
id SERIAL PRIMARY KEY,
avocado_price TEXT,
city TEXT 
);
​
SELECT * FROM avocado
​
DROP TABLE houseprices;
CREATE TABLE houseprices (
house_id SERIAL PRIMARY KEY,
metro_city TEXT,
median_home_price TEXT
);
SELECT * FROM houseprices
​
-- Joins tables
SELECT avocado.city, avocado.avocado_price, houseprices.median_home_price
FROM avocado
JOIN houseprices
ON avocado.city LIKE houseprices.metro_city
ORDER BY houseprices.median_home_price;