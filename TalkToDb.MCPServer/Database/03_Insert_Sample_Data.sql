/*
===========================================================
Project Name : HR Management System
Script       : Insert Sample Data
Author       : P Ranjith Kumar
===========================================================
*/

USE HRManagementDB;
GO

------------------------------------------------------------
-- Departments
------------------------------------------------------------
INSERT INTO Departments (DepartmentName, Location)
VALUES
('Human Resources', 'Hyderabad'),
('Information Technology', 'Bangalore'),
('Finance', 'Mumbai'),
('Sales', 'Chennai'),
('Marketing', 'Pune');

------------------------------------------------------------
-- Employees
------------------------------------------------------------
INSERT INTO Employees
(
FirstName,
LastName,
Gender,
Email,
Phone,
HireDate,
Salary,
DepartmentID
)
VALUES
('Rahul','Sharma','M','rahul.sharma@company.com','9876543210','2023-01-15',65000,2),

('Priya','Reddy','F','priya.reddy@company.com','9876543211','2022-08-20',72000,1),

('Arjun','Kumar','M','arjun.kumar@company.com','9876543212','2024-02-10',58000,2),

('Sneha','Patel','F','sneha.patel@company.com','9876543213','2021-12-05',81000,3),

('Vikram','Singh','M','vikram.singh@company.com','9876543214','2020-06-18',90000,4),

('Anjali','Mehta','F','anjali.mehta@company.com','9876543215','2023-09-11',67000,5);

PRINT 'Sample data inserted successfully.';
GO
