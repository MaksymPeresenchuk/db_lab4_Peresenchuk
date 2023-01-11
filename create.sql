CREATE TABLE Films
(
  film_id              INT   NOT NULL,
  film_title           char(80)  NOT NULL,
  director_id          char(2)  NOT NULL REFERENCES Directors (director_id),
  genre_id             char(3)  NOT NULL REFERENCES Genres (genre_id),

  country_id           char(3)  NOT NULL REFERENCES Countries (country_id),
  film_year            INT  NOT NULL,
  average_rating       float8 NOT NULL,
  CONSTRAINT pk_films PRIMARY KEY (film_id)

);

CREATE TABLE Countries
(
  country_id      char(3)  NOT NULL,
  country_name    char(20)  NOT NULL,
  CONSTRAINT pk_countries PRIMARY KEY (country_id) 
);

CREATE TABLE Directors
(
  director_id     char(2)  NOT NULL,
  director_name   char(50)  NOT NULL,
  CONSTRAINT pk_directors PRIMARY KEY (director_id) 
);

CREATE TABLE Genres
(
  genre_id      char(3)  NOT NULL,
  genre_name    char(60) NOT NULL,
  CONSTRAINT pk_genres PRIMARY KEY (genre_id)   
);
