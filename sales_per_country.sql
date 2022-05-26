--Provide a query that shows the total sales per country.

SELECT 
    i.BillingCountry,
    SUM(i.Total) as "Total Sales"
FROM Invoice i 
GROUP BY i.BillingCountry