Write an SQL query to report the nth highest salary from the Employee table. If there is no nth highest salary, the query should report null.
Input: 
Employee table:
+----+--------+
| id | salary |
+----+--------+
| 1  | 100    |
| 2  | 200    |
| 3  | 300    |
+----+--------+
n = 2
Output: 
+------------------------+
| getNthHighestSalary(2) |
+------------------------+
| 200                    |
+------------------------+

Input: 
Employee table:
+----+--------+
| id | salary |
+----+--------+
| 1  | 100    |
+----+--------+
n = 2
Output: 
+------------------------+
| getNthHighestSalary(2) |
+------------------------+
| null                   |
+------------------------+


 /* T-SQL */
CREATE FUNCTION getNthHighestSalary(@N INT) RETURNS INT AS
BEGIN
    RETURN (
        /* Write your T-SQL query statement below. */
    SELECT DISTINCT Salary FROM (SELECT Salary,
                                 DENSE_RANK () OVER (ORDER BY Salary DESC) AS R
                                 FROM Employee )  TEM
        WHERE R=@N

# MySQL 
CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN

DECLARE M INT;
SET M = N-1;
  RETURN (
      # Write your MySQL query statement below.
      
      SELECT DISTINCT Salary FROM Employee ORDER BY Salary DESC LIMIT M, 1
  );
END
    );
END
