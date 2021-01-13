/* Write your T-SQL query statement below */

SELECT Name AS Customers

FROM Customers AS a

LEFT JOIN Orders AS b

ON a.Id = b.CustomerId

WHERE CustomerId IS NULL
