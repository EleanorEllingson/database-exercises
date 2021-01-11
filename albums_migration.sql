use codeup_test_db;

DROP TABLE if exists albums;

CREATE TABLE albums (
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        artist VARCHAR(100) NOT NULL,
                        name VARCHAR(100) NOT NULL,
                        release_date DATE NOT NULL,
                        sales FLOAT,
                        genre VARCHAR(250),
                        PRIMARY KEY (id)
);