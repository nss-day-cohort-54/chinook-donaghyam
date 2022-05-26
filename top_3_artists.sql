--Provide a query that shows the top 3 best selling artists.

SELECT 
    a.name,
    COUNT(t.TrackId) as NumberOfPurchases
FROM InvoiceLine il 
Join Track t 
    ON t.TrackId = il.TrackId
Join Album al  
    ON al.AlbumId = t.AlbumId
Join Artist a  
    ON a.ArtistId = al.ArtistId
GROUP BY a.ArtistId
ORDER BY NumberOfPurchases DESC
LIMIT 3