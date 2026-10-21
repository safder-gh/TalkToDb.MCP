USE HRManagementDB;
GO

CREATE TABLE Roles
(
    RoleID INT IDENTITY(1,1) PRIMARY KEY,

    RoleName VARCHAR(100) NOT NULL UNIQUE,

    Description VARCHAR(255)
);

PRINT 'Roles table created successfully.';
GO
