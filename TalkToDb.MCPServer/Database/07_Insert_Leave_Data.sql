USE HRManagementDB;
GO

INSERT INTO LeaveRequests
(EmployeeID, LeaveType, StartDate, EndDate, Reason, Status)

VALUES

(1001,'Casual Leave','2026-07-21','2026-07-22','Personal Work','Approved'),

(1002,'Sick Leave','2026-07-18','2026-07-19','Fever','Approved'),

(1003,'Earned Leave','2026-08-01','2026-08-05','Family Vacation','Pending'),

(1004,'Casual Leave','2026-07-15','2026-07-15','Personal Work','Approved'),

(1005,'Sick Leave','2026-07-23','2026-07-24','Medical Checkup','Rejected');

PRINT 'Leave data inserted successfully.';
GO
