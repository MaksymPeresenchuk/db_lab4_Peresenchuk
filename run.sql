-- Виклик функції

SELECT * FROM get_films('1964');
SELECT * FROM get_films('1939');
SELECT * FROM get_films('1981');

SELECT * FROM films

----------------------------------
-- Виклик процедури

CALL insert_director('MP', 'Maksym Peresenchuk');
CALL insert_director('PV', 'Petro Veselka');
CALL insert_director('AM', 'Anton Myraha');

SELECT * FROM directors

----------------------------------
-- Виклик 

SELECT * FROM countries

UPDATE countries SET country_name = 'ITALY' WHERE country_id = 'ITA';
INSERT INTO countries(country_id, country_name) VALUES ('GR', 'Germany');
DELETE FROM countries WHERE country_id='GR'

SELECT * FROM countries_audit;

