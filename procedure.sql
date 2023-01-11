-- Процедура insert_director(dr_id varchar, dr_name varchar) додає в таблицю directors
-- новий рядок із вказаними аргументами. 

DROP PROCEDURE IF EXISTS insert_director(integer, varchar);

CREATE OR REPLACE PROCEDURE insert_director(dr_id varchar, dr_name varchar)
LANGUAGE 'plpgsql'
AS $$
BEGIN
    INSERT INTO directors(director_id, director_name) VALUES (dr_id, dr_name);
END;
$$;

CALL insert_director('MP', 'Maksym Peresenchuk');
SELECT * FROM directors
