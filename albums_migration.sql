USE codeup_test_db;

DROP TABLE if exists albums;

CREATE TABLE albums (
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        artist VARCHAR(50) NOT NULL DEFAULT 'Unknown',
                        name VARCHAR(100) NOT NULL default 'Untitled',
                         release_date INT UNSIGNED,
                        sales FLOAT UNSIGNED,
                        genre VARCHAR(100),
                        PRIMARY KEY (id)
);


DESCRIBE albums;

ALTER TABLE albums
    ADD UNIQUE(name, artist);