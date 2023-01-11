-- Функція get_films(f_year integer) виводить всі фільми заданого року. 

DROP FUNCTION IF EXISTS get_films(integer); 

CREATE OR REPLACE FUNCTION get_films(f_year integer) 
    RETURNS TABLE (film_id integer, film_name varchar, film_year integer)
    LANGUAGE 'plpgsql'
AS $$
BEGIN
    RETURN QUERY
        SELECT films.film_id::integer, films.film_title::varchar, films.film_year::integer
		FROM films 
		WHERE films.film_year = f_year;
END;
$$

SELECT * FROM get_films('1964');
SELECT * FROM films