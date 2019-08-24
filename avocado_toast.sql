-- Create tables for raw data to be loaded into
DROP TABLE avocado;
CREATE TABLE avocado (
id SERIAL PRIMARY KEY,
date TEXT,
avocado_price TEXT,
city TEXT
);

DROP TABLE wheat;
CREATE TABLE wheat (
id SERIAL PRIMARY KEY,
date TEXT,
wheat_price TEXT
);

-- Join tables
SELECT avocado.date, avocado.avocado_price, avocado.city, wheat.wheat_price
FROM avocado
JOIN wheat
ON avocado.date = wheat.date;
