-- Тригер виконує аудит будь-яких змін в таблиці countries: 
-- в окремій таблиці countries_audit фіксується поточний час зміни та ім'я користувача.

SELECT user from countries

DROP TABLE IF EXISTS countries_audit;
DROP TRIGGER IF EXISTS countries_update_details ON countries;
DROP FUNCTION IF EXISTS table_countries_audit() CASCADE;

CREATE TABLE countries_audit(
	id SERIAL PRIMARY KEY,
	updated TIMESTAMP,
	user_name varchar(50) NOT NULL
);

CREATE OR REPLACE FUNCTION table_countries_audit() RETURNS trigger 
LANGUAGE 'plpgsql'
AS $$
BEGIN
 	INSERT INTO countries_audit(updated, user_name)
		VALUES(NOW(), user);
	RETURN NULL;
END;
$$ ;

CREATE TRIGGER countries_update_details 
AFTER UPDATE ON countries
FOR EACH ROW EXECUTE FUNCTION table_countries_audit();

CREATE TRIGGER countries_update2_details 
AFTER INSERT ON countries
FOR EACH ROW EXECUTE FUNCTION table_countries_audit();

CREATE TRIGGER countries_update3_details 
AFTER DELETE ON countries
FOR EACH ROW EXECUTE FUNCTION table_countries_audit();

SELECT * FROM countries
UPDATE countries SET country_name = 'ITALY' WHERE country_id = 'ITA';
SELECT * FROM countries_audit;