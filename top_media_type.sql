--Provide a query that shows the most purchased Media Type.

SELECT 
    m.Name,
    COUNT(t.MediaTypeId) AS NumberOfPurchases
FROM InvoiceLine il 
JOIN Track t 
    ON t.TrackId = il.TrackId 
JOIN MediaType m 
    ON t.MediaTypeId = m.MediaTypeId
GROUP BY t.MediaTypeId
ORDER BY COUNT(t.MediaTypeId) DESC