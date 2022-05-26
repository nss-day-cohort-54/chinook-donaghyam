SELECT COUNT(il.InvoiceId),
    il.InvoiceId
FROM InvoiceLine il 
GROUP BY il.InvoiceId