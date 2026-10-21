/*
===========================================================
Project Name : HR Management System
Script       : Create Tables
Author       : P Ranjith Kumar
===========================================================
*/

USE HRManagementDB;
GO

------------------------------------------------------------
-- Departments
------------------------------------------------------------
CREATE TABLE Departments (
    DepartmentID INT IDENTITY(1,1) PRIMARY KEY,
    DepartmentName VARCHAR(100) NOT NULL UNIQUE,
    Location VARCHAR(100)
);

------------------------------------------------------------
-- Employees
------------------------------------------------------------
CREATE TABLE Employees (
    EmployeeID INT IDENTITY(1001,1) PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Gender CHAR(1) CHECK (Gender IN ('M','F')),
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(15),
    HireDate DATE NOT NULL,
    Salary DECIMAL(10,2) NOT NULL,
    DepartmentID INT NOT NULL,
    CONSTRAINT FK_Employee_Department
        FOREIGN KEY (DepartmentID)
        REFERENCES Departments(DepartmentID)
);

PRINT 'Departments and Employees tables created successfully.';
GO
