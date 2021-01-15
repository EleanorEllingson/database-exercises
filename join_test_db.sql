CREATE TABLE roles (
       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
       name VARCHAR(100) NOT NULL,
       PRIMARY KEY (id)
);
DROP table users;

CREATE TABLE users (
       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
       name VARCHAR(100) NOT NULL,
       email VARCHAR(100) NOT NULL,
       role_id INT UNSIGNED DEFAULT NULL,
       PRIMARY KEY (id),
       FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

SELECT * FROM roles;

INSERT INTO users (name, email, role_id) VALUES
('bob', 'bob@example.com', 1),
('joe', 'joe@example.com', 2),
('sally', 'sally@example.com', 3),
('adam', 'adam@example.com', 3),
('jane', 'jane@example.com', null),
('mike', 'mike@example.com', null),
('billy', 'billy@example.com', null),
('jenny', 'jenny@example.com', 2),
('page', 'page@example.com', 2),
('tom', 'tom@example.com', 2);

SELECT * FROM users;
SELECT users.name as user_name, roles.name as role_name
FROM users
JOIN roles ON users.role_id = roles.id;

SELECT users.name as user_name, roles.name as role_name
FROM users
LEFT JOIN roles ON users.role_id = roles.id;

SELECT users.name as user_name, roles.name as role_name
FROM users
RIGHT JOIN roles ON users.role_id = roles.id;

SELECT users.name as user_name, roles.name as role_name
FROM users
RIGHT JOIN roles ON users.role_id = roles.id;

SELECT roles.name, COUNT(roles.name) FROM users
RIGHT JOIN roles ON users.role_id = roles.id
GROUP BY roles.name;
