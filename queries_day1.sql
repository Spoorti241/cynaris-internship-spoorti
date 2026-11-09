CREATE TABLE sales (
    id INTEGER,
    name TEXT,
    city TEXT,
    amount INTEGER
);

INSERT INTO sales VALUES
(1, 'Rahul', 'Bangalore', 5000),
(2, 'Priya', 'Chennai', 3000),
(3, 'Amit', 'Bangalore', 7000),
(4, 'Sneha', 'Mumbai', 2000),
(5, 'Kiran', 'Chennai', 4500);


SELECT * FROM sales;

SELECT name FROM sales;

SELECT * FROM sales
WHERE city = 'Bangalore';

SELECT * FROM sales
WHERE amount > 3000;

SELECT * FROM sales
WHERE city = 'Bangalore' AND amount > 3000;

SELECT * FROM sales
WHERE city = 'Mumbai' OR city = 'Chennai';

SELECT * FROM sales
WHERE NOT city = 'Mumbai';

SELECT * FROM sales
WHERE name LIKE 'P%';

SELECT * FROM sales
WHERE city IN ('Bangalore', 'Chennai');

SELECT * FROM sales
WHERE amount BETWEEN 3000 AND 5000;