SELECT 
    i.InvoiceLineId,
    t.name as "Track Name",
    a.Name as "Artist Name"
FROM InvoiceLine i
JOIN Track t 
    ON t.TrackId = i.TrackId
JOIN Album
    ON Album.AlbumId = t.AlbumId
JOIN Artist a 
    ON a.ArtistId = Album.ArtistId