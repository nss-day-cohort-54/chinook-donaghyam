--Provide a query that shows the most purchased track(s) of 2013.

SELECT 
    Name,
    NumberOfPurchases
FROM (
    SELECT
        t.name,
        COUNT(t.TrackId) AS "NumberOfPurchases"
    FROM InvoiceLine il 
    JOIN Invoice i 
        ON il.InvoiceId = i.InvoiceId
    JOIN Track t 
        ON t.TrackId = il.TrackId
    WHERE i.InvoiceDate LIKE "2013%"
    GROUP BY t.TrackId
)
WHERE NumberOfPurchases = (
    SELECT
        MAX(NumberOfPurchases)
    FROM (
        SELECT
            t.name,
            COUNT(t.TrackId) AS "NumberOfPurchases"
        FROM InvoiceLine il 
        JOIN Invoice i 
            ON il.InvoiceId = i.InvoiceId
        JOIN Track t 
            ON t.TrackId = il.TrackId
        WHERE i.InvoiceDate LIKE "2013%"
        GROUP BY t.TrackId
        )
)
