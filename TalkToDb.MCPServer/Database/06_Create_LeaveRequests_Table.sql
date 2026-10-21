/*
===========================================================
Project Name : HR Management System
Script       : Leave Requests Table
===========================================================
*/

USE HRManagementDB;
GO

CREATE TABLE LeaveRequests
(
    LeaveID INT IDENTITY(1,1) PRIMARY KEY,

    EmployeeID INT NOT NULL,

    LeaveType VARCHAR(30),

    StartDate DATE,

    EndDate DATE,

    Reason VARCHAR(255),

    Status VARCHAR(20)
        CHECK(Status IN ('Pending','Approved','Rejected')),

    CONSTRAINT FK_Leave_Employee
        FOREIGN KEY(EmployeeID)
        REFERENCES Employees(EmployeeID)
);

PRINT 'LeaveRequests table created successfully.';
GO
