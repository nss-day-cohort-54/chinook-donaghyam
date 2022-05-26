-- Which sales agent made the most in sales in 2009?

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
    WHERE i.InvoiceDate LIKE "2009%"
    GROUP BY e.EmployeeId
)