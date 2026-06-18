-- Total Revenue

SELECT SUM(TotalAmount)
FROM Orders
WHERE Status <> 'Cancelled';

--------------------------------------------------

-- Average Order Value

SELECT AVG(TotalAmount)
FROM Orders
WHERE Status <> 'Cancelled';

--------------------------------------------------

-- Customer Count

SELECT COUNT(*)
FROM Customers;

--------------------------------------------------

-- Open Support Tickets

SELECT COUNT(*)
FROM Support_Tickets
WHERE Status = 'Open';

--------------------------------------------------

-- Outstanding Invoices

SELECT SUM(InvoiceAmount)
FROM Invoices
WHERE Status IN ('Unpaid','Overdue');