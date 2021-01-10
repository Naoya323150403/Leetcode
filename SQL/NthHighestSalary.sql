CREATE FUNCTION getNthHighestSalary(@N INT) RETURNS INT AS
BEGIN
    
    RETURN (
        /* Write your T-SQL query statement below. */
        SELECT DISTINCT Salary AS getNthHighestSalary
        FROM (
            SELECT
            ID,
            Salary,
            DENSE_RANK() OVER(ORDER BY Salary DESC) AS ranking
            FROM Employee
             ) AS Dummy
        
        WHERE ranking = @N
        
        
    );
END