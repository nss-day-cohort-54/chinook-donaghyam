--Provide a query that shows the top 5 most purchased tracks over all.

SELECT 
    t.name,
    COUNT(t.TrackId) as NumberOfPurchases
FROM InvoiceLine il 
JOIN Invoice i 
    ON i.InvoiceId = il.InvoiceId 
Join Track t 
    ON t.TrackId = il.TrackId
GROUP BY t.TrackId
ORDER BY NumberOfPurchases DESC
LIMIT 5