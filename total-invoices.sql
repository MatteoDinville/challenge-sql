SELECT customers.FirstName || ' ' || UPPER(customers.LastName) AS FullName, SUM(UnitPrice) AS AllInvoices
FROM invoices
INNER JOIN customers ON invoices.CustomerId= customers.CustomerId
INNER JOIN invoice_items ON invoice_items.InvoiceId= invoices.InvoiceId
GROUP BY customers.CustomerId
HAVING AllInvoices > 38
ORDER BY FirstName