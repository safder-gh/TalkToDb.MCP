USE HRManagementDB;
GO

INSERT INTO EmployeeProjects
(EmployeeID,ProjectID,AssignedDate,RoleInProject)

VALUES

(1001,1,'2026-01-05','Developer'),
(1002,2,'2026-02-10','Business Analyst'),
(1003,3,'2026-03-15','SQL Developer'),
(1004,2,'2026-02-20','Project Manager'),
(1005,4,'2026-04-01','Team Lead'),
(1006,1,'2026-01-15','Database Developer');

PRINT 'EmployeeProjects data inserted successfully.';
GO
