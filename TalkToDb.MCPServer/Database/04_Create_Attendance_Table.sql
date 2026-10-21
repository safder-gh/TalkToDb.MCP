/*
===========================================================
Project Name : HR Management System
Script       : Attendance Table
Author       : P Ranjith Kumar
===========================================================
*/

USE HRManagementDB;
GO

CREATE TABLE Attendance
(
    AttendanceID INT IDENTITY(1,1) PRIMARY KEY,

    EmployeeID INT NOT NULL,

    AttendanceDate DATE NOT NULL,

    CheckIn TIME,

    CheckOut TIME,

    Status VARCHAR(20)
    CHECK (Status IN ('Present','Absent','Leave','WFH')),

    CONSTRAINT FK_Attendance_Employee
        FOREIGN KEY(EmployeeID)
        REFERENCES Employees(EmployeeID)
);

PRINT 'Attendance table created successfully.';
GO
