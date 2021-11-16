SELECT FirstName, LastName, AVG(invoices.Total) AS InvoicesAverage
FROM customers
INNER JOIN invoices ON invoices.CustomerId = customers.CustomerId
GROUP BY customers.CustomerId
ORDER BY FirstName
