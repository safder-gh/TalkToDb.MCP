USE HRManagementDB;
GO

INSERT INTO Payroll
(EmployeeID, BasicSalary, Bonus, Deductions, PayMonth)

VALUES

(1001,65000,5000,2500,'July-2026'),

(1002,72000,6000,3000,'July-2026'),

(1003,58000,3500,1800,'July-2026'),

(1004,81000,7000,3200,'July-2026'),

(1005,90000,10000,5000,'July-2026'),

(1006,67000,4000,2000,'July-2026');

PRINT 'Payroll data inserted successfully.';
GO
