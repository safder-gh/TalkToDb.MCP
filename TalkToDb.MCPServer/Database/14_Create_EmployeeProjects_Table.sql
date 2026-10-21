USE HRManagementDB;
GO

CREATE TABLE EmployeeProjects
(
    EmployeeProjectID INT IDENTITY(1,1) PRIMARY KEY,

    EmployeeID INT NOT NULL,

    ProjectID INT NOT NULL,

    AssignedDate DATE NOT NULL,

    RoleInProject VARCHAR(100),

    CONSTRAINT FK_EP_Employee
        FOREIGN KEY(EmployeeID)
        REFERENCES Employees(EmployeeID),

    CONSTRAINT FK_EP_Project
        FOREIGN KEY(ProjectID)
        REFERENCES Projects(ProjectID)
);

PRINT 'EmployeeProjects table created successfully.';
GO
