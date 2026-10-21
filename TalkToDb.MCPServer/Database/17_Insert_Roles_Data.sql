USE HRManagementDB;
GO

INSERT INTO Roles (RoleName, Description)
VALUES
('SQL Developer','Develops and optimizes SQL databases'),
('HR Manager','Manages HR activities'),
('Project Manager','Leads project execution'),
('Business Analyst','Analyzes business requirements'),
('Database Administrator','Maintains database systems');

PRINT 'Roles data inserted successfully.';
GO
