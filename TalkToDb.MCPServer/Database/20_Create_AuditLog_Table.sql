USE HRManagementDB;
GO

CREATE TABLE AuditLog
(
    AuditID INT IDENTITY(1,1) PRIMARY KEY,

    TableName VARCHAR(100),

    ActionType VARCHAR(20),

    RecordID INT,

    ChangedBy VARCHAR(100),

    ChangeDate DATETIME DEFAULT GETDATE()
);

PRINT 'AuditLog table created successfully.';
GO
