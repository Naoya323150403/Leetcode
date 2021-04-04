/* Write your T-SQL query statement below */
SELECT
      Department
      ,Employee
      ,Salary

FROM(
    SELECT      B.Name AS Department,
                A.Name AS Employee  ,
                A.Salary            ,
                RANK()OVER(PARTITION BY DepartmentId ORDER BY Salary DESC ) AS R
    FROM        Employee    AS A
    INNER JOIN  Department  AS B ON A.DepartmentId=B.Id
)Z

WHERE Z.R=1