-- Create Database
CREATE DATABASE LabDB;
USE LabDB;

-- Create Tables
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10,2),
    HireDate DATE
);

CREATE TABLE Projects (
    ProjectID INT PRIMARY KEY,
    ProjectName VARCHAR(100),
    StartDate DATE,
    EndDate DATE
);

CREATE TABLE EmployeeProjects (
    EmployeeID INT,
    ProjectID INT,
    Role VARCHAR(50),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
    FOREIGN KEY (ProjectID) REFERENCES Projects(ProjectID)
);

-- Insert Data (10 entries per table)
INSERT INTO Employees (EmployeeID, FirstName, LastName, Department, Salary, HireDate)
VALUES
(1, 'Alice', 'Johnson', 'HR', 60000, '2015-06-22'),
(2, 'Bob', 'Smith', 'IT', 75000, '2018-09-10'),
(3, 'Charlie', 'Brown', 'Finance', 80000, '2020-01-15'),
(4, 'David', 'Lee', 'IT', 72000, '2017-11-05'),
(5, 'Emma', 'Davis', 'HR', 65000, '2016-04-30'),
(6, 'Frank', 'Wilson', 'Marketing', 55000, '2019-08-20'),
(7, 'Grace', 'Hall', 'IT', 78000, '2015-03-10'),
(8, 'Hannah', 'Young', 'Finance', 72000, '2016-12-11'),
(9, 'Ian', 'King', 'HR', 67000, '2017-05-18'),
(10, 'Jack', 'Wright', 'Marketing', 52000, '2021-09-25');

INSERT INTO Projects (ProjectID, ProjectName, StartDate, EndDate)
VALUES
(101, 'AI Development', '2023-01-01', '2023-12-31'),
(102, 'Cloud Migration', '2022-06-15', '2023-06-15'),
(103, 'Financial Analysis', '2021-07-01', '2022-12-31'),
(104, 'Cybersecurity Enhancement', '2020-05-10', '2021-09-30'),
(105, 'E-commerce Platform', '2019-11-20', '2020-12-15'),
(106, 'HR System Upgrade', '2021-03-05', '2022-06-10'),
(107, 'Marketing Strategy Overhaul', '2023-02-14', '2023-10-30'),
(108, 'Data Warehousing', '2020-07-07', '2021-12-01'),
(109, 'Cloud Security Assessment', '2021-01-20', '2022-07-25'),
(110, 'Network Infrastructure Revamp', '2018-09-12', '2019-11-30');

INSERT INTO EmployeeProjects (EmployeeID, ProjectID, Role)
VALUES
(2, 101, 'Developer'),
(3, 103, 'Analyst'),
(5, 102, 'Consultant'),
(6, 104, 'Security Analyst'),
(7, 105, 'Project Lead'),
(8, 106, 'HR Specialist'),
(10, 108, 'Data Engineer'),
(1, 109, 'Security Consultant');

-- Worksheet Questions
-- 1. Retrieve all employees from the Employees table.
SELECT employees FROM Employees
-- 2. Retrieve employees who are in the IT department and earn more than 70,000.
-- 3. Find employees whose last name starts with 'S'.
-- 4. Get the highest salary in each department.
-- 5. Count the number of employees in each department.
-- 6. Find employees who are not assigned to any project.
-- 7. Get employees hired before 2018 and sort them by hire date.
-- 8. Calculate the total salary expense for all employees.
-- 9. Get projects that ended before 2023.
-- 10. Retrieve distinct departments from the Employees table.
