USE HRManagementDB;
GO

INSERT INTO Projects
(ProjectName,StartDate,EndDate,Budget)

VALUES

('HR Portal','2026-01-01','2026-06-30',250000),

('Payroll Automation','2026-02-01','2026-08-30',500000),

('Attendance System','2026-03-01','2026-09-01',300000),

('Employee Self Service','2026-04-01','2026-12-31',700000);

PRINT 'Projects inserted successfully.';
GO
