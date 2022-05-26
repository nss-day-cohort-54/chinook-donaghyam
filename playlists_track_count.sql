SELECT 
    p.Name,
    COUNT(t.TrackId)
FROM Track t 
JOIN PlaylistTrack pt 
    ON pt.TrackId = t.TrackId
JOIN Playlist p 
    ON p.PlaylistId = pt.PlaylistId
GROUP BY p.PlaylistId
