CREATE DATABASE moon_river

\c moon_river

CREATE TABLE posts(
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    body VARCHAR(1000),
    song_url VARCHAR(1000),
    author VARCHAR(100),
    release_date DATE
);
