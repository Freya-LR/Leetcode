Write an SQL query to find all numbers that appear at least three times consecutively.
Input: 
Logs table:
+----+-----+
| id | num |
+----+-----+
| 1  | 1   |
| 2  | 1   |
| 3  | 1   |
| 4  | 2   |
| 5  | 1   |
| 6  | 2   |
| 7  | 2   |
+----+-----+
Output: 
+-----------------+
| ConsecutiveNums |
+-----------------+
| 1               |
+-----------------+
Explanation: 1 is the only number that appears consecutively for at least three times.

# Write your MySQL query statement below
SELECT DISTINCT num as ConsecutiveNums
FROM Logs
WHERE (id+1, num) in (SELECT * FROM Logs) and (id+2, num) in (SELECT * FROM Logs)

/* Write your T-SQL query statement below */
SELECT DISTINCT l1.num AS ConsecutiveNums
FROM Logs l1
 Join Logs l2  on l1.id = l2.id-1 
 join Logs l3 on l1.id=l3.id-2
 where  l1.num=l2.num
 and l1.num=l3.num
