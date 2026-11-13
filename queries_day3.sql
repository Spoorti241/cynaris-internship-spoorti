CREATE TABLE retail_sales (
    sale_id INTEGER PRIMARY KEY,
    region TEXT,
    category TEXT,
    sale_date TEXT,
    amount REAL
);

INSERT INTO retail_sales
(region, category, sale_date, amount)
VALUES
('South', 'Electronics', '2026-01-05', 15000),
('North', 'Clothing', '2026-01-10', 5000),
('South', 'Clothing', '2026-01-15', 7000),
('West', 'Electronics', '2026-02-05', 20000),
('North', 'Electronics', '2026-02-10', 12000),
('South', 'Furniture', '2026-02-15', 18000),
('West', 'Clothing', '2026-03-05', 8000),
('North', 'Furniture', '2026-03-10', 14000),
('South', 'Electronics', '2026-03-15', 22000),
('West', 'Furniture', '2026-03-20', 16000);


SELECT COUNT(*) AS total_sales
FROM retail_sales;

SELECT SUM(amount) AS total_revenue
FROM retail_sales;


SELECT region, AVG(amount) AS average_sales
FROM retail_sales
GROUP BY region;


SELECT category, MAX(amount) AS highest_sale
FROM retail_sales
GROUP BY category;


SELECT category, MIN(amount) AS lowest_sale
FROM retail_sales
GROUP BY category;


SELECT region, COUNT(*) AS number_of_sales,
       SUM(amount) AS total_revenue
FROM retail_sales
GROUP BY region;


SELECT category, SUM(amount) AS total_revenue
FROM retail_sales
GROUP BY category;


SELECT
    strftime('%Y-%m', sale_date) AS sales_month,
    SUM(amount) AS monthly_revenue
FROM retail_sales
GROUP BY strftime('%Y-%m', sale_date)
HAVING SUM(amount) > 20000;



SELECT
    sale_id,
    region,
    category,
    amount,
    SUM(amount) OVER (
        PARTITION BY region
    ) AS region_total
FROM retail_sales;