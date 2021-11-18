SELECT invoices.InvoiceId, tracks."Name" AS InvoiceItem, invoice_items.UnitPrice
FROM invoices
INNER JOIN invoice_items ON invoice_items.InvoiceId = invoices.InvoiceId
INNER JOIN tracks ON tracks.TrackId = invoice_items.TrackId
WHERE invoices.InvoiceId = '10'
ORDER BY tracks."Name"