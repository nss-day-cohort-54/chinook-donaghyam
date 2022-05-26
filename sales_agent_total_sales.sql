SELECT 
    e.FirstName || " " || e.LastName as "Full name",
    SUM(i.Total) as "Total sales"
FROM Invoice i 
JOIN Customer c
    ON c.CustomerId = i.CustomerId
JOIN Employee e 
    ON e.EmployeeId = c.SupportRepId
GROUP BY e.EmployeeId
