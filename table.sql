CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR NOT NULL,
    author VARCHAR NOT NULL,
    genre VARCHAR,
    published_year INT,
    isbn VARCHAR UNIQUE,
    price DECIMAL,
    rating FLOAT,
    stock_count INT
);

ALTER TABLE Books
ADD COLUMN publisher VARCHAR,
ADD COLUMN num_pages INT;