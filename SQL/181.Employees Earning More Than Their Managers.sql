Write an SQL query to find the employees who earn more than their managers.
Input: 
Employee table:
+----+-------+--------+-----------+
| id | name  | salary | managerId |
+----+-------+--------+-----------+
| 1  | Joe   | 70000  | 3         |
| 2  | Henry | 80000  | 4         |
| 3  | Sam   | 60000  | Null      |
| 4  | Max   | 90000  | Null      |
+----+-------+--------+-----------+
Output: 
+----------+
| Employee |
+----------+
| Joe      |
+----------+
Explanation: Joe is the only employee who earns more than his manager.

/* Write your T-SQL query statement below */
SELECT e1.name as Employee 
from Employee e1 
 join Employee e2 
on e2.id=e1.managerId
where e1.salary > e2.salary

# Write your MySQL query statement below
select e1.name as Employee from Employee e1, Employee e2
where e1.managerId =e2.id
and e1.salary >e2.salary
