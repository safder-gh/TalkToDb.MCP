USE HRManagementDB;
GO

CREATE TABLE Payroll
(
    PayrollID INT IDENTITY(1,1) PRIMARY KEY,

    EmployeeID INT NOT NULL,

    BasicSalary DECIMAL(10,2),

    Bonus DECIMAL(10,2),

    Deductions DECIMAL(10,2),

    NetSalary AS (BasicSalary + Bonus - Deductions),

    PayMonth VARCHAR(20),

    CONSTRAINT FK_Payroll_Employee
        FOREIGN KEY(EmployeeID)
        REFERENCES Employees(EmployeeID)
);

PRINT 'Payroll table created successfully.';
GO
