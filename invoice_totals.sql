SELECT 
    i.Total,
    c.FirstName || " " || c.LastName as "Customer name",
    c.Country "Customer country",
    e.FirstName || " " || e.LastName as "Sales rep name"
FROM Customer c
JOIN Employee e 
    ON e.EmployeeId = c.SupportRepId
JOIN Invoice i 
    ON i.CustomerId = c.CustomerId