--Which sales agent made the most in sales over all?

SELECT
    Name,
    MAX("Total") as "Top Sales"
FROM (
    SELECT 
        e.FirstName || " " || e.LastName as "Name",
        SUM(i.Total) as "Total"
    FROM Invoice i 
    JOIN Customer c 
        ON c.CustomerId = i.CustomerId
    JOIN Employee e 
        ON c.SupportRepId = e.EmployeeId
    GROUP BY e.EmployeeId
)