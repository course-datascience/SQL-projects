CREATE DATABASE HRMS;
USE HRMS;

-- Table for Employees
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    DepartmentID INT,
    RoleID INT,
    DateOfBirth DATE,
    DateOfJoining DATE,
    Email VARCHAR(100) UNIQUE NOT NULL,
    PhoneNumber VARCHAR(15) UNIQUE,
    Address TEXT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID),
    FOREIGN KEY (RoleID) REFERENCES Roles(RoleID)
);

-- Table for Departments
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY AUTO_INCREMENT,
    DepartmentName VARCHAR(100) NOT NULL
);

-- Table for Roles
CREATE TABLE Roles (
    RoleID INT PRIMARY KEY AUTO_INCREMENT,
    RoleName VARCHAR(100) NOT NULL,
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

-- Table for Salaries
CREATE TABLE Salaries (
    SalaryID INT PRIMARY KEY AUTO_INCREMENT,
    EmployeeID INT,
    BaseSalary DECIMAL(10, 2) NOT NULL,
    Bonus DECIMAL(10, 2),
    Deductions DECIMAL(10, 2),
    SalaryDate DATE,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

-- Table for Attendance
CREATE TABLE Attendance (
    AttendanceID INT PRIMARY KEY AUTO_INCREMENT,
    EmployeeID INT,
    Date DATE,
    Status ENUM('Present', 'Absent', 'Leave'),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

-- Table for Leave
CREATE TABLE Leave_record (
    LeaveID INT PRIMARY KEY AUTO_INCREMENT,
    EmployeeID INT,
    LeaveType ENUM('Sick', 'Casual', 'Annual'),
    StartDate DATE,
    EndDate DATE,
    Status ENUM('Pending', 'Approved', 'Rejected'),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

-- Table for Performance Reviews
CREATE TABLE PerformanceReviews (
    ReviewID INT PRIMARY KEY AUTO_INCREMENT,
    EmployeeID INT,
    ReviewDate DATE,
    ReviewerName VARCHAR(100),
    Comments TEXT,
    Rating INT CHECK (Rating BETWEEN 1 AND 5),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);
