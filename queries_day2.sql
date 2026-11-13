CREATE TABLE Customers (
    customer_id INTEGER,
    name TEXT,
    city TEXT
);

CREATE TABLE Orders (
    order_id INTEGER,
    customer_id INTEGER,
    amount INTEGER
);

INSERT INTO Customers VALUES
(1, 'Rahul', 'Bangalore'),
(2, 'Priya', 'Mysore'),
(3, 'Amit', 'Chennai'),
(4, 'Sneha', 'Delhi');

INSERT INTO Orders VALUES
(101, 1, 500),
(102, 2, 800),
(103, 1, 300),
(104, 5, 600);


SELECT
    Customers.name,
    Orders.order_id,
    Orders.amount
FROM Customers
INNER JOIN Orders
ON Customers.customer_id = Orders.customer_id;


SELECT
    c.name,
    o.order_id,
    o.amount
FROM Customers c
LEFT JOIN Orders o
ON c.customer_id = o.customer_id;


SELECT
    c.name,
    o.order_id,
    o.amount
FROM Customers c
RIGHT JOIN Orders o
ON c.customer_id = o.customer_id;


SELECT
    c.name,
    o.order_id,
    o.amount
FROM Customers c
FULL OUTER JOIN Orders o
ON c.customer_id = o.customer_id;

CREATE TABLE Employees (
    employee_id INTEGER,
    employee_name TEXT,
    manager_id INTEGER
);

INSERT INTO Employees VALUES
(1, 'Rahul', NULL),
(2, 'Priya', 1),
(3, 'Amit', 1),
(4, 'Sneha', 2);

SELECT
    e.employee_name AS Employee,
    m.employee_name AS Manager
FROM Employees e
LEFT JOIN Employees m
ON e.manager_id = m.employee_id;


SELECT DISTINCT c.customer_id, c.name
FROM Customers c
JOIN Orders o
ON c.customer_id = o.customer_id;