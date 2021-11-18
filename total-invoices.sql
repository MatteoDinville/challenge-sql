SELECT customers.FirstName || ' ' || UPPER(customers.LastName) AS FullName, SUM(UnitPrice) AS AllInvoices
FROM invoices
INNER JOIN invoice_items ON invoice_items.InvoiceId= invoices.InvoiceId
INNER JOIN customers ON invoices.CustomerId= customers.CustomerId
GROUP BY customers.CustomerId
HAVING AllInvoices > 38
ORDER BY FirstName