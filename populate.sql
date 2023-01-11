INSERT INTO Directors (director_id, director_name) VALUES
('BL','Barry Levinson'),
('EP','Elio Petri'),
('SL','Sidney Lumet'),
('BW','Billy Wilder'),
('RR','Robert Rossen'),
('CG','Costa-Gavras'),
('MC','Marcel Carné'),
('IP','Ivan Passer'),
('DM','Dick Maas'),
('LZ','Luigi Zampa');


INSERT INTO Genres (genre_id, genre_name) VALUES
('COM','Comedy'),
('DRA','Drama'),
('THR','Thriller');


INSERT INTO Countries (country_id, country_name) VALUES
('US','United States'),
('ITA','Italy'),
('FRA','France'),
('NET','Netherlands');
	

INSERT INTO Films (film_id, film_title, director_id, genre_id, country_id, film_year, average_rating) VALUES
('1','Diner','BL','COM','US','1982','7.0'),
('2','A ciascuno il suo','EP','DRA','ITA','1967','7.6'),
('3','Fail-Safe','SL','DRA','US','1964','8.3'),
('4','Some Like It Hot','BW','COM','US','1959','9.1'),
('5','Johnny O''Clock','RR','THR','US','1947','7.7'),
('6','Section Spéciale','CG','DRA','FRA','1974','8.1'),
('7','Le jour se lève','MC','DRA','FRA','1939','7.9'),
('8','Cutter''s Way','IP','THR','US','1981','7.3'),
('9','Amsterdamned','DM','THR','NET','1988','6.7'),
('10','Anni facili','LZ','COM','ITA','1953','7.5');