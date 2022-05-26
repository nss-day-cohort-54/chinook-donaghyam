SELECT 
    i.InvoiceLineId,
    t.name
FROM InvoiceLine i
JOIN Track t 
    ON t.TrackId = i.TrackId