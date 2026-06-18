CREATE TABLE customers (
    CustomerId INT (IDENTITY(1,1) PRIMARY KEY,
    CustomerName VARCHAR(100) NOT NULL,
    EmailAddress VARCHAR(100) NOT NULL,
    PhoneNumber VARCHAR(15) NOT NULL,
    Industry VARCHAR(50) NOT NULL,
    Country VARCHAR(50) NOT NULL,
    CreatedAt DATETIME DEFAULT GETDATE(),
);
CREATE TABLE Products (
    ProductId INT IDENTITY(1,1) PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Description VARCHAR(255),
    Category VARCHAR(50) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    StockQuantity INT NOT NULL,
    CreatedAt DATETIME DEFAULT GETDATE(),
);
CREATE TABLE Orders (
    OrderId INT IDENTITY(1,1) PRIMARY KEY,
    CustomerId INT NOT NULL,
    OrderDate DATETIME DEFAULT GETDATE(),
    TotalAmount DECIMAL(10, 2) NOT NULL,
    Status VARCHAR(20) NOT NULL,
    FOREIGN KEY (CustomerId) REFERENCES Customers(CustomerId)
);
CREATE TABLE OrderItems (
    OrderItemId INT IDENTITY(1,1) PRIMARY KEY,
    OrderId INT NOT NULL,
    ProductId INT NOT NULL,
    Quantity INT NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (OrderId) REFERENCES Orders(OrderId),
    FOREIGN KEY (ProductId) REFERENCES Products(ProductId)
);
CREATE TABLE PAYMENTS (
    PaymentId INT IDENTITY(1,1) PRIMARY KEY,
    OrderId INT NOT NULL,
    PaymentDate DATETIME DEFAULT GETDATE(),
    Amount DECIMAL(10, 2) NOT NULL,
    PaymentMethod VARCHAR(50) NOT NULL,
    FOREIGN KEY (OrderId) REFERENCES Orders(OrderId)
);
create table suppliers (
    SupplierId INT IDENTITY(1,1) PRIMARY KEY,
    SupplierName VARCHAR(100) NOT NULL,
    ContactName VARCHAR(100),
    EmailAddress VARCHAR(100),
    PhoneNumber VARCHAR(15),
    Country VARCHAR(50),
    CreatedAt DATETIME DEFAULT GETDATE()
);
create table employees (
    EmployeeId INT IDENTITY(1,1) PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    EmailAddress VARCHAR(100) NOT NULL,
    PhoneNumber VARCHAR(15),
    HireDate DATETIME DEFAULT GETDATE(),
    JobTitle VARCHAR(50),
    Department VARCHAR(50)
);
CREATE TABLE SUPPORT_TICKETS (
    TicketId INT IDENTITY(1,1) PRIMARY KEY,
    CustomerId INT NOT NULL,
    Subject VARCHAR(100) NOT NULL,
    Description TEXT NOT NULL,
    Status VARCHAR(20) NOT NULL,
    CreatedAt DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (CustomerId) REFERENCES Customers(CustomerId)
);