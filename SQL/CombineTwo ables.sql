/* Write your T-SQL query statement below */
SELECT FIrstName, LastName, City, State
FROM Person
LEFT JOIN Address
ON Person.PersonID = Address.PersonID
