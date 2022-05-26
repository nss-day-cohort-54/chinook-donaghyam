SELECT SUM(Invoice.Total) as "Total sales"
FROM Invoice
WHERE Invoice.InvoiceDate LIKE '2009%'
OR Invoice.InvoiceDate LIKE '2011%'