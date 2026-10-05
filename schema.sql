CREATE TABLE artists (id INTEGER PRIMARY KEY, name TEXT, country TEXT);
CREATE TABLE tracks (id INTEGER PRIMARY KEY, artist_id INTEGER,
    title TEXT, duration INT);
CREATE TABLE users (id INTEGER PRIMARY KEY, name TEXT);
CREATE TABLE listens (id INTEGER PRIMARY KEY, user_id INTEGER,
    track_id INTEGER, ts DATETIME);
