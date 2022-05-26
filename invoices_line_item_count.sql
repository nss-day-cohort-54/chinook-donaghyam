SELECT 
    i.InvoiceId,
    COUNT(il.InvoiceId) as "Count"
FROM Invoice i
JOIN InvoiceLine il 
    ON il.InvoiceId = i.InvoiceId
GROUP BY i.InvoiceId
