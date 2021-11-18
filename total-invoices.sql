SELECT FirstName || ' ' || Upper(LastName) AS FullName, SUM(UnitPrice) AS ALLInvoices
FROM invoices
INNER JOIN invoice_items ON invoices."InvoiceId" = invoice_items."InvoiceId"
INNER JOIN customers ON invoices."CustomerId" = customers."CustomerId"
GROUP BY customers.CustomerId
HAVING ALLInvoices > 38
ORDER BY FirstName