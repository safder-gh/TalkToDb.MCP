USE HRManagementDB;
GO

INSERT INTO Attendance
(EmployeeID,AttendanceDate,CheckIn,CheckOut,Status)

VALUES

(1001,'2026-07-20','09:05','18:10','Present'),

(1002,'2026-07-20','09:00','18:00','Present'),

(1003,'2026-07-20','09:45','18:30','Present'),

(1004,'2026-07-20',NULL,NULL,'Leave'),

(1005,'2026-07-20','08:55','18:05','Present'),

(1006,'2026-07-20','09:10','18:20','WFH');

PRINT 'Attendance data inserted successfully.';
GO
