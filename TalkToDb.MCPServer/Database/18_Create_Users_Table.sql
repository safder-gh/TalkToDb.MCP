USE HRManagementDB;
GO

CREATE TABLE Users
(
    UserID INT IDENTITY(1,1) PRIMARY KEY,

    EmployeeID INT NOT NULL,

    Username VARCHAR(50) NOT NULL UNIQUE,

    PasswordHash VARCHAR(255) NOT NULL,

    RoleID INT NOT NULL,

    IsActive BIT DEFAULT 1,

    CONSTRAINT FK_User_Employee
        FOREIGN KEY(EmployeeID)
        REFERENCES Employees(EmployeeID),

    CONSTRAINT FK_User_Role
        FOREIGN KEY(RoleID)
        REFERENCES Roles(RoleID)
);

PRINT 'Users table created successfully.';
GO
