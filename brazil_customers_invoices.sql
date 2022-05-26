SELECT 
    c.FirstName || " " || c.LastName as "Name",
    i.InvoiceId,
    i.BillingCountry
FROM Customer c 
JOIN Invoice i 
    ON i.CustomerId = c.CustomerId
WHERE c.Country = "Brazil"
