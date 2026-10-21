USE HRManagementDB;
GO

INSERT INTO Users
(EmployeeID, Username, PasswordHash, RoleID)

VALUES

(1001,'rahul','Rahul@123',1),

(1002,'priya','Priya@123',2),

(1003,'arjun','Arjun@123',1),

(1004,'sneha','Sneha@123',3),

(1005,'vikram','Vikram@123',5),

(1006,'anjali','Anjali@123',4);

PRINT 'Users inserted successfully.';
GO
