CREATE DATABASE Bank_Transactions;

USE Bank_Transactions;

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(20),
    Address VARCHAR(255),
    DateOfBirth DATE
);

CREATE TABLE Branches (
    BranchID INT PRIMARY KEY AUTO_INCREMENT,
    BranchName VARCHAR(100),
    Location VARCHAR(100)
);

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Position VARCHAR(50),
    BranchID INT,
    FOREIGN KEY (BranchID) REFERENCES Branches(BranchID)
);

CREATE TABLE Accounts (
    AccountID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    BranchID INT,
    AccountType VARCHAR(50),
    Balance DECIMAL(15, 2),
    OpenDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (BranchID) REFERENCES Branches(BranchID)
);

CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY AUTO_INCREMENT,
    AccountID INT,
    TransactionDate DATETIME,
    Amount DECIMAL(10,2),
    TransactionType VARCHAR(20),
    FOREIGN KEY (AccountID) REFERENCES Accounts(AccountID)
);

INSERT INTO Customers (FirstName, LastName, Email, Phone, Address, DateOfBirth) VALUES
('Sharda', 'Jadhav', 'Sharda.jadhav@example.com', '1234567890', '123 Elm St', '2004-07-23'),
('Tanuja', 'Pawar', 'Tanuja.@example.com', '2345678901', '456 Oak St', '2007-08-22'),
('Neha', 'Ekka', 'Neha.N@example.com', '3456789012', '789 Pine St', '1995-02-14'),
('Dilara', 'Shaikh', 'Dilara.Shaikh@example.com', '4567890123', '321 Maple St', '1996-12-03'),
('Khushi', 'Ghupta', 'Khushi.K@example.com', '5678901234', '654 Cedar St', '2005-07-19'),
('Divya', 'Bind', 'dave.w@example.com', '6789012345', '987 Spruce St', '2004-04-30'),
('Sanjana', 'Thakur', 'sanju.d@example.com', '7890123456', '159 Birch St', '2005-11-11'),
('Ashwini', 'Chalwadi', 'Ashwini.m@example.com', '8901234567', '753 Walnut St', '2005-09-25'),
('Trupti', 'shinde', 'shinde.l@example.com', '9012345678', '852 Ash St', '1995-01-01'),
('Komal', 'Gharat', 'gharat.c@example.com', '1231231234', '951 Fir St', '2004-06-15'),
('Mansi', 'patil', 'pvy.m@example.com', '2342342345', '147 Willow St', '2005-03-20'),
('Akansha', 'Patil', 'Patil.l@example.com', '3453453456', '258 Poplar St', '2004-10-05'),
('Rashmita', 'Jadhav', 'Rashmi.w@example.com', '4564564567', '369 Chestnut St', '2004-08-30'),
('Sharddha', 'Pasthe', 'pashte.h@example.com', '5675675678', '123 Redwood St', '2003-12-01'),
('Preana', 'Chintakuta', 'Chintakunta.a@example.com', '6786786789', '456 Sequoia St', '2005-07-07'),
('Anindita', 'shome', 'shome.y@example.com', '7897897890', '789 Cypress St', '2006-03-18'),
('Pranaya', 'Patil', 'pranaya.k@example.com', '8908908901', '321 Sycamore St', '2003-09-09'),
('Shravni', 'Dalvi', 'Dalvi.w@example.com', '9019019012', '654 Magnolia St', '2004-05-21'),
('Ankita', 'Gholap', 'Gholap.s@example.com', '1121121122', '987 Palm St', '2004-02-28'),
('Chitali', 'more', 'rose.g@example.com', '2232232233', '159 Bamboo St', '2007-06-06');


INSERT INTO Branches (BranchName, Location) VALUES
('Downtown', 'New York'),
('Midtown', 'Chicago'),
('Uptown', 'Los Angeles'),
('East Side', 'Houston'),
('West End', 'Phoenix');


INSERT INTO Employees (FirstName, LastName, Position, BranchID) VALUES
('Ethan', 'Turner', 'Manager', 1),
('Sophia', 'Hill', 'Teller', 1),
('Liam', 'Baker', 'Loan Officer', 2),
('Olivia', 'Perez', 'Accountant', 2),
('Noah', 'Ward', 'Security', 3),
('Ava', 'Griffin', 'Clerk', 3),
('Mason', 'Cox', 'Branch Manager', 4),
('Isabella', 'Long', 'Customer Service', 4),
('Logan', 'Bell', 'Teller', 5),
('Mia', 'Cole', 'Auditor', 5);


INSERT INTO Accounts (CustomerID, BranchID, AccountType, Balance, OpenDate) VALUES
(1, 1, 'Savings', 5000.00, '2020-01-01'),
(2, 2, 'Checking', 3200.50, '2020-03-15'),
(3, 1, 'Savings', 1500.75, '2021-06-10'),
(4, 3, 'Checking', 2400.00, '2022-07-20'),
(5, 2, 'Savings', 800.25, '2023-09-05'),
(6, 4, 'Savings', 950.00, '2021-01-22'),
(7, 5, 'Checking', 4200.80, '2020-11-30'),
(8, 1, 'Savings', 3050.00, '2023-04-01'),
(9, 2, 'Checking', 2780.40, '2022-12-12'),
(10, 3, 'Savings', 3450.20, '2021-08-18'),
(11, 4, 'Checking', 1230.99, '2022-10-25'),
(12, 5, 'Savings', 6500.00, '2023-02-17'),
(13, 1, 'Checking', 875.35, '2021-05-14'),
(14, 2, 'Savings', 999.99, '2020-06-22'),
(15, 3, 'Checking', 1450.75, '2022-03-30'),
(16, 4, 'Savings', 2345.00, '2023-01-05'),
(17, 5, 'Checking', 765.00, '2021-09-12'),
(18, 1, 'Savings', 1780.00, '2022-04-19'),
(19, 2, 'Checking', 2950.25, '2020-08-08'),
(20, 3, 'Savings', 6000.00, '2021-11-11');


INSERT INTO Transactions (AccountID, TransactionDate, Amount, TransactionType) VALUES
(1, '2024-01-01 10:00:00', 200.00, 'Deposit'),
(2, '2024-01-05 12:30:00', 100.00, 'Withdrawal'),
(3, '2024-01-10 09:00:00', 500.00, 'Deposit'),
(4, '2024-01-15 14:00:00', 250.00, 'Deposit'),
(5, '2024-01-20 16:45:00', 100.00, 'Withdrawal'),
(6, '2024-02-01 08:30:00', 750.00, 'Deposit'),
(7, '2024-02-05 10:15:00', 300.00, 'Deposit'),
(8, '2024-02-10 11:00:00', 200.00, 'Withdrawal'),
(9, '2024-02-15 13:30:00', 400.00, 'Deposit'),
(10, '2024-02-20 15:00:00', 600.00, 'Withdrawal'),
(11, '2024-03-01 09:45:00', 1000.00, 'Deposit'),
(12, '2024-03-05 10:10:00', 150.00, 'Withdrawal'),
(13, '2024-03-10 12:00:00', 275.00, 'Deposit'),
(14, '2024-03-15 13:15:00', 300.00, 'Withdrawal'),
(15, '2024-03-20 14:20:00', 425.00, 'Deposit'),
(16, '2024-03-25 15:30:00', 500.00, 'Withdrawal'),
(17, '2024-04-01 08:00:00', 350.00, 'Deposit'),
(18, '2024-04-05 09:15:00', 275.00, 'Deposit'),
(19, '2024-04-10 10:20:00', 150.00, 'Withdrawal'),
(20, '2024-04-15 11:45:00', 600.00, 'Deposit');


START TRANSACTION;

UPDATE Accounts
SET Balance = Balance - 500
WHERE AccountID = 1;

SELECT * FROM bank_transactions.accounts;

SELECT 
    a.AccountID,
    c.FirstName,
    c.LastName,
    SUM(CASE WHEN t.TransactionType = 'Deposit' THEN t.Amount ELSE 0 END) AS TotalDeposits,
    SUM(CASE WHEN t.TransactionType = 'Withdrawal' THEN t.Amount ELSE 0 END) AS TotalWithdrawals
FROM Accounts a
JOIN Customers c ON a.CustomerID = c.CustomerID
LEFT JOIN Transactions t ON a.AccountID = t.AccountID
GROUP BY a.AccountID, c.FirstName, c.LastName;

SELECT 
    a.AccountID,
    c.FirstName,
    c.LastName,
    a.Balance
FROM Accounts a
JOIN Customers c ON a.CustomerID = c.CustomerID
WHERE a.Balance < 1000;

SELECT 
    b.BranchName,
    SUM(a.Balance) AS TotalBranchBalance
FROM Accounts a
JOIN Branches b ON a.BranchID = b.BranchID
GROUP BY b.BranchName;

SELECT 
    t.TransactionID,
    c.FirstName,
    c.LastName,
    t.TransactionDate,
    t.Amount,
    t.TransactionType
FROM Transactions t
JOIN Accounts a ON t.AccountID = a.AccountID
JOIN Customers c ON a.CustomerID = c.CustomerID
WHERE t.TransactionDate BETWEEN '2024-01-01' AND '2024-03-31'
ORDER BY t.TransactionDate;

SELECT 
    e.FirstName,
    e.LastName,
    e.Position,
    b.BranchName
FROM Employees e
JOIN Branches b ON e.BranchID = b.BranchID
ORDER BY b.BranchName, e.Position;

START TRANSACTION;
INSERT INTO Transactions (AccountID, TransactionDate, Amount, TransactionType)
VALUES (2, NOW(), 250.00, 'Withdrawal');

UPDATE Accounts
SET Balance = Balance - 250.00
WHERE AccountID = 2;
COMMIT;

SELECT 
    AccountID,
    Balance,
    Balance * 0.10 AS InterestAmount
FROM Accounts;

SELECT 
    AccountID,
    Balance,
    Balance - 50 AS BalanceAfterFee
FROM Accounts;

SELECT 
    AccountID,
    Balance,
    (Balance * 1.05) - 20 AS ProjectedBalance
FROM Accounts;

SELECT 
    AccountID,
    SUM(CASE WHEN TransactionType = 'Deposit' THEN Amount ELSE 0 END) AS TotalDeposits,
    SUM(CASE WHEN TransactionType = 'Withdrawal' THEN Amount ELSE 0 END) AS TotalWithdrawals,
    SUM(CASE WHEN TransactionType = 'Deposit' THEN Amount ELSE 0 END) -
    SUM(CASE WHEN TransactionType = 'Withdrawal' THEN Amount ELSE 0 END) AS NetTransactionAmount
FROM Transactions
GROUP BY AccountID;

SELECT 
    CustomerID,
    FirstName,
    LastName,
    TIMESTAMPDIFF(YEAR, DateOfBirth, CURDATE()) AS Age
FROM Customers;

SELECT 
    CustomerID,
    Phone,
    RIGHT(Phone, 2) AS LastTwoDigits
FROM Customers;

SELECT 
    AccountID,
    Balance,
    ROUND((Balance / (SELECT SUM(Balance) FROM Accounts)) * 100, 2) AS PercentageOfTotal
FROM Accounts;
















