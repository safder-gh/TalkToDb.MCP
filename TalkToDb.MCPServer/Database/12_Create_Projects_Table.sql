USE HRManagementDB;
GO

CREATE TABLE Projects
(
    ProjectID INT IDENTITY(1,1) PRIMARY KEY,

    ProjectName VARCHAR(100) NOT NULL,

    StartDate DATE,

    EndDate DATE,

    Budget DECIMAL(12,2)
);

PRINT 'Projects table created successfully.';
GO
