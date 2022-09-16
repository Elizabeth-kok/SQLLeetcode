-- Question 32
-- Write a SQL query to delete all duplicate email entries in a table named Person, keeping only unique emails based on its smallest Id.

-- +----+------------------+
-- | Id | Email            |
-- +----+------------------+
-- | 1  | john@example.com |
-- | 2  | bob@example.com  |
-- | 3  | john@example.com |
-- +----+------------------+
-- Id is the primary key column for this table.
-- For example, after running your query, the above Person table should have the following rows:

-- +----+------------------+
-- | Id | Email            |
-- +----+------------------+
-- | 1  | john@example.com |
-- | 2  | bob@example.com  |
-- +----+------------------+

-- Solution
-- 1 a 1 a
-- 1 a 2 b
-- 1 a 3 c
-- 2 b 1 a
-- 2 b 2 b
-- 2 b 3 c
-- 3 c 1 a
-- 3 c 2 b
-- 3 c 3 c

delete p1
from person p1, person p2
where p1.Email = p2.Email and p1.Id > p2.Id
