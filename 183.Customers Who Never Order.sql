Write an SQL query to report all customers who never order anything.
Input: 
Customers table:
+----+-------+
| id | name  |
+----+-------+
| 1  | Joe   |
| 2  | Henry |
| 3  | Sam   |
| 4  | Max   |
+----+-------+
Orders table:
+----+------------+
| id | customerId |
+----+------------+
| 1  | 3          |
| 2  | 1          |
+----+------------+
Output: 
+-----------+
| Customers |
+-----------+
| Henry     |
| Max       |
+-----------+

# Write your MySQL query statement below
select name as Customers 
from Customers 
where id not in (select customerId from Orders)

/* Write your T-SQL query statement below */
select c.name as Customers
from Customers c
left join Orders o
on c.id=o.customerId
where o.id is NULL
