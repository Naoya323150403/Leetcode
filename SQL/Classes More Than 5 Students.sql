/* Write your T-SQL query statement below */
SELECT class
FROM (SELECT class, count(DISTINCT student)AS num
     FROM courses
     GROUP BY class
     ) AS Dummy
WHERE num >= 5








