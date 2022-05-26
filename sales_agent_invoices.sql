SELECT 
    e.FirstName || " " || e.LastName "Name",
    i.InvoiceId
FROM Employee e 
JOIN Customer c 
    ON c.SupportRepId = e.EmployeeId
JOIN Invoice i 
    ON i.CustomerId = c.CustomerId
WHERE e.Title = "Sales Support Agent"