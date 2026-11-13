CREATE TABLE retail_sales (
    sale_id INTEGER PRIMARY KEY,
    salesperson TEXT,
    region TEXT,
    category TEXT,
    sales_amount REAL
);


SELECT * FROM retail_sales;


SELECT *
FROM retail_sales
WHERE sales_amount > (
    SELECT AVG(sales_amount)
    FROM retail_sales
);

SELECT
    p.region,
    p.salesperson,
    p.total_sales
FROM (
    SELECT
        region,
        salesperson,
        SUM(sales_amount) AS total_sales
    FROM retail_sales
    GROUP BY region, salesperson
) p
WHERE NOT EXISTS (
    SELECT 1
    FROM (
        SELECT
            region,
            salesperson,
            SUM(sales_amount) AS total_sales
        FROM retail_sales
        GROUP BY region, salesperson
    ) other
    WHERE other.region = p.region
      AND other.total_sales > p.total_sales
);

WITH average_sales AS (
    SELECT AVG(sales_amount) AS avg_amount
    FROM retail_sales
)
SELECT *
FROM retail_sales
WHERE sales_amount > (
    SELECT avg_amount
    FROM average_sales
);


WITH regional_sales AS (
    SELECT
        region,
        SUM(sales_amount) AS total_sales
    FROM retail_sales
    GROUP BY region
),
average_region_sales AS (
    SELECT AVG(total_sales) AS avg_sales
    FROM regional_sales
)
SELECT
    region,
    total_sales
FROM regional_sales
WHERE total_sales > (
    SELECT avg_sales
    FROM average_region_sales
);