USE ad_lister;

CREATE TABLE IF NOT EXISTS users (
     id INT UNSIGNED AUTO_INCREMENT NOT NULL,
     email VARCHAR(100) NOT NULL,
     password VARCHAR(150) NOT NULL,
     PRIMARY KEY(id)
);
CREATE TABLE IF NOT EXISTS ads (
   id INT UNSIGNED AUTO_INCREMENT NOT NULL,
   title VARCHAR(255) NOT NULL,
   description VARCHAR(255),
   user_id INT UNSIGNED NOT NULL,
   PRIMARY KEY (id),
   FOREIGN KEY (user_id) REFERENCES users (id)
);
CREATE TABLE IF NOT EXISTS categories (
      id INT UNSIGNED AUTO_INCREMENT NOT NULL,
      category VARCHAR(255) NOT NULL,
      PRIMARY KEY (id)
);
CREATE TABLE ad_category (
     ad_id INTEGER UNSIGNED NOT NULL,
     category_id INTEGER UNSIGNED NOT NULL,
     FOREIGN KEY (ad_id) REFERENCES ads(id),
     FOREIGN KEY (category_id) REFERENCES categories(id)
);

INSERT INTO users (email, password)
VALUES
('joe@gmail.com', 'password'),
('ann@gmail.com', 'password'),
('sarah@gmail.com', 'password');

INSERT INTO ads (title, description, user_id)
VALUES
('Honda Accord', '2007 Honda Accord, 4 door, Standard transmission, runs well', 1),
('Nintendo Switch', 'Switch game console', 2),
('Boys size 10 clothes', '4 Old Navy Slim Jeans, 4 Old Navy tee-shirts', 3),
('Kitchen table and Chairs', 'Dark wood rectangle table', 3);

INSERT INTO categories (category)
VALUES
('Vehicles'),
('Electronics'),
('Clothing'),
('Furniture');

INSERT INTO ad_category (ad_id, category_id)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4);

# For a given ad, what is the email address of the user that created it?
SELECT email
FROM users
WHERE id IN (
    SELECT user_id
    FROM ads
    WHERE user_id = 1
);

# For a given ad, what category, or categories, does it belong to?
SELECT category
FROM categories
WHERE id IN (
    SELECT category_id
    FROM ad_category
    WHERE category_id = 1
);

# For a given category, show all the ads that are in that category.
SELECT *
FROM ads
WHERE id IN (
    SELECT ad_id
    FROM ad_category
    WHERE category_id = 2
);

# For a given user, show all the ads they have posted.
SELECT *
FROM ads
WHERE user_id IN (
    SELECT id
    FROM users
    WHERE id = 3
);



