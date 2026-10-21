/*
===========================================================
Project Name : HR Management System
Script       : Performance Table
Author       : P Ranjith Kumar
===========================================================
*/

USE HRManagementDB;
GO

CREATE TABLE Performance
(
    PerformanceID INT IDENTITY(1,1) PRIMARY KEY,

    EmployeeID INT NOT NULL,

    ReviewDate DATE NOT NULL,

    Rating INT CHECK (Rating BETWEEN 1 AND 5),

    ManagerComments VARCHAR(500),

    CONSTRAINT FK_Performance_Employee
        FOREIGN KEY(EmployeeID)
        REFERENCES Employees(EmployeeID)
);

PRINT 'Performance table created successfully.';
GO
