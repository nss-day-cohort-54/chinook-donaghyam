SELECT SUM(i.InvoiceId) as "Number of Invoices",
    i.BillingCountry
FROM Invoice i
GROUP BY i.BillingCountry