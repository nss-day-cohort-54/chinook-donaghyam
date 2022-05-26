SELECT 
    t.Name as "Track name",
    mt.Name as "Media type",
    g.Name as "Genre"
FROM Track t
JOIN MediaType mt 
    ON mt.MediaTypeId = t.MediaTypeId
JOIN Genre g 
    ON g.GenreId = t.GenreId