-- Use this file to define your SQL tables
-- The SQL in this file will be executed when you run `npm run setup-db`
DROP TABLE IF EXISTS books;
DROP TABLE IF EXISTS authors;
DROP TABLE IF EXISTS correlation;

CREATE TABLE authors (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR,
    dob DATE, 
    pob VARCHAR
);

CREATE TABLE books (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    title VARCHAR,
    release INT
);

CREATE TABLE correlation (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    author_id INT,
    book_id INT,
    FOREIGN KEY (author_id) REFERENCES authors(id),
    FOREIGN KEY (book_id) REFERENCES books(id)
);

INSERT INTO authors(
    name, dob, pob
)
VALUES
('Tamora Pierce', '1954-12-13', 'Pennsylvania'),
('Holly Black', '1971-11-10', 'New Jersey'),
('Leigh Bardugo', '1975-04-06', 'Jerusalem'),
('Ray Bradbury', '1920-08-22', 'Illinois'),
('Scott Westerfeld', '1963-05-06', 'Texas')
;

INSERT INTO books (
    title, release
)
VALUES
('Wild Magic', 1992),
('Lioness Rampant', 1988),
('Young Warriors, Stories of Strength', 2006),
('Book of Night', 2022),
('Ninth House', 2019),
('Shadow and Bone', 2012),
('Fahrenheit 451', 1953),
('The Illustrated Man', 1951),
('Uglies', 2005),
('Peeps', 2005)
;

INSERT INTO correlation (
    author_id, book_id
)
VALUES
(1,1),
(1,2),
(1,3),
(2,3),
(2,4),
(3,5),
(3,6),
(4,7),
(4,8),
(5,9),
(5,10)
;