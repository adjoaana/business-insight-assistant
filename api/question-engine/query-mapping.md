# Total Sales
SELECT SUM(TotalAmount) AS TotalSales
FROM Sales
WHERE Status <> 'Cancelled';

# CustomerCount
SELECT COUNT(*) AS CustomerCount
FROM Customers

# Open Tickets
SELECT COUNT(*) AS OpenTickets
FROM Support_Tickets
WHERE Status <> 'Open';

# Outstanding Invoices
SELECT SUM(InvoiceAmount) AS OutstandingValue
FROM Invoices
WHERE Status IN ('Unpaid', 'Overdue')

# Top Customer
SELECT TOP 1
    c.cUSTOMERnAME, 
    SUM(o.TotalAmount) Revenue
FROM Customers c
Join Orders o
    ON c.CustomerId = o.CustomerId
GROUP BY c.CustomerName
ORDER BY Revenue DESC;
