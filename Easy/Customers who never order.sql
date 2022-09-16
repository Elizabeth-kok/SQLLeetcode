-- Question 13
-- Suppose that a website contains two tables,
-- the Customers table and the Orders table. Write a SQL query to find all customers who never order anything.

-- Table: Customers.

-- +----+-------+
-- | Id | Name  |
-- +----+-------+
-- | 1  | Joe   |
-- | 2  | Henry |
-- | 3  | Sam   |
-- | 4  | Max   |
-- +----+-------+
-- Table: Orders.

-- +----+------------+
-- | Id | CustomerId |
-- +----+------------+
-- | 1  | 3          |
-- | 2  | 1          |
-- +----+------------+
-- Using the above tables as example, return the following:

-- +-----------+
-- | Customers |
-- +-----------+
-- | Henry     |
-- | Max       |
-- +-----------+


-- Solution 1
select name as Customers
from customers
where id != ALL(select c.Id
            from orders o left join customers c
            on o.CustomerId = c.Id)

-- Solution 2
Select Name as Customers
from customers
where customers.id not in (select CustomerId from orders)

-- Solution 3
Select Customers.Name as Customers
from (customers c left join orders o on o.CustomerId=c.Id)
Where orders.customersid is NULL
