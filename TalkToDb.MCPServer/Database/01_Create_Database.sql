/*
===========================================================
Project Name : HR Management System
Database     : HRManagementDB
Developer    : P Ranjith Kumar
Description  : Database Creation Script
===========================================================
*/

IF DB_ID('HRManagementDB') IS NOT NULL
BEGIN
    DROP DATABASE HRManagementDB;
END
GO

CREATE DATABASE HRManagementDB;
GO

USE HRManagementDB;
GO

PRINT 'HRManagementDB created successfully.';
