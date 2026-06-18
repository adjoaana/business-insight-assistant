module.exports = {
  TotalSales: `
    SELECT SUM(TotalAmount) AS Value
    FROM Orders
    WHERE Status <> 'Cancelled'
  `,

  CustomerCount: `
    SELECT COUNT(*) AS Value
    FROM Customers
  `,

  OpenTickets: `
    SELECT COUNT(*) AS Value
    FROM Support_Tickets
    WHERE Status = 'Open'
  `,

  OutstandingInvoices: `
    SELECT SUM(InvoiceAmount) AS Value
    FROM Invoices
    WHERE Status IN ('Unpaid','Overdue')
  `,

  TopCustomer: `
    SELECT TOP 1
      c.CustomerName,
      SUM(o.TotalAmount) AS Revenue
    FROM Customers c
    JOIN Orders o
      ON c.CustomerId = o.CustomerId
    GROUP BY c.CustomerName
    ORDER BY Revenue DESC
  `
};