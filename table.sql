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
ADD COLUMN publisher TEXT,
ADD COLUMN num_pages INT;