function buildResponse(intent, result) {
  switch (intent) {
    case "TotalSales":
      return `The total sales for the period is ${result.toFixed(2)}.`;
    case "CustomerCount":
      return `There are currently ${result} customers.`;
    case "OpenTickets":
      return `There are ${result} open support tickets.`;

    case "TopCustomer":
      return `${result} is currently the highest revenue generating customer with sales of £${result.Revenue}.`;

    case "OutstandingInvoices":
      return `The total amount of outstanding invoices is $${result.outstandingInvoices.toFixed(2)}.`;
  }
  return "Sorry, I couldn't understand your question.";
}
 module.exports={
    buildResponse
 }