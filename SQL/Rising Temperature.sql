/* Write your T-SQL query statement below */

SELECT T1.id AS Id

FROM Weather AS T1

JOIN Weather AS T2 ON T1.recordDate = DATEADD(day,1,T2.recordDate) AND T2.Temperature < T1.Temperature





