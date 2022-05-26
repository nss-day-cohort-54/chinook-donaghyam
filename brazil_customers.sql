SELECT 
    c.FirstName || " " || c.LastName as "Name",
    c.CustomerId,
    c.Country
FROM Customer c 
WHERE c.Country = "Brazil"