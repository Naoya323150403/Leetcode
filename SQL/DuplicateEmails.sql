/* Write your T-SQL query statement below */

SELECT Email

FROM (SELECT Email,COUNT(Email) AS CNT
     FROM Person
      GROUP BY Email
     ) AS Dummy

WHERE CNT > 1
