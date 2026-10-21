USE HRManagementDB;
GO

INSERT INTO Performance
(EmployeeID,ReviewDate,Rating,ManagerComments)

VALUES

(1001,'2026-07-01',5,'Outstanding Performance'),

(1002,'2026-07-01',4,'Consistently Meets Expectations'),

(1003,'2026-07-01',3,'Needs Improvement'),

(1004,'2026-07-01',5,'Excellent Leadership'),

(1005,'2026-07-01',4,'Very Good Performance'),

(1006,'2026-07-01',5,'Top Performer');

PRINT 'Performance data inserted successfully.';
GO
