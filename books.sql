CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title TEXT NOT NULL,
    author TEXT NOT NULL,
    genre TEXT,
    published_year INT,
    isbn VARCHAR(13) UNIQUE,
    price DECIMAL,
    rating FLOAT,
    stock_count INT
);

ALTER TABLE Books
ADD COLUMN publisher VARCHAR,
ADD COLUMN num_pages INT;

INSERT INTO Books (title, author, genre, published_year, isbn, price, rating, stock_count, publisher, num_pages)
VALUES
    ('A Journey to the Center', 'Jules Verne', 'Adventure', 1864, '1234567890123', 12.99, 4.5, 10, 'Verne Publishing', 350),
    ('War and Peace', 'Leo Tolstoy', 'Historical', 1869, '1234567890124', 14.99, 4.8, 5, 'Tolstoy Prints', 1200),
    ('Whispers of the Wind', 'Amelia Blackburn', 'Romance', 1982, '1234567890125', 9.99, 4.2, 20, 'Blackburn House', 275),
    ('The Galactic Odyssey', 'Orion Starfield', 'Science Fiction', 2005, '1234567890126', 19.99, 4.9, 15, 'Nebula Press', 450);

UPDATE Books
SET
  price = 12.99,    
  stock_count = stock_count - 1   
WHERE
  title = 'War and Peace';

GRANT SELECT, UPDATE ON Books TO 'martin'@'localhost';
REVOKE DELETE, UPDATE ON Books FROM 'martin'@'localhost';

BEGIN TRANSACTION;
DELETE FROM Books WHERE book_id = 101;
COMMIT;

START TRANSACTION;
DELETE FROM Books WHERE book_id = 103;
ROLLBACK;