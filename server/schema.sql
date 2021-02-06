-- Run psql -d [target_db_name] -U [user/owner_name] < [/path/to]schema.sql

-- DROP TABLE IF EXISTS pics CASCADE;
-- DROP TABLE IF EXISTS places CASCADE;
-- DROP TABLE IF EXISTS toDos CASCADE;

CREATE TABLE IF NOT EXISTS pics (
    id INT PRIMARY KEY,
    picURL text
);

CREATE TABLE IF NOT EXISTS places (
    id INT PRIMARY KEY,
    descrip text,
    picURL INT,
    numRating INT,
    Rating INT,
    roomType text,
    numBeds INT,
    price NUMERIC
);

CREATE TABLE IF NOT EXISTS toDos (
    id INT PRIMARY KEY,
    descript text,
    picURL INT,
    numRating INT,
    rating INT,
    price NUMERIC
);

ALTER TABLE places ADD FOREIGN KEY (picURL) REFERENCES pics;
ALTER TABLE toDos ADD FOREIGN KEY (picURL) REFERENCES pics;
