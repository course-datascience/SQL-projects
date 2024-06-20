-- Inserting sample data into Departments
INSERT INTO Departments (DepartmentName) VALUES
('Human Resources'), ('Engineering'), ('Sales'), ('Marketing');

-- Inserting sample data into Roles
INSERT INTO Roles (RoleName, DepartmentID) VALUES
('HR Manager', 1),
('Software Engineer', 2),
('Sales Executive', 3),
('Marketing Specialist', 4);

-- Inserting sample data into Employees
INSERT INTO Employees (FirstName, LastName, DepartmentID, RoleID, DateOfBirth, DateOfJoining, Email, PhoneNumber, Address) VALUES
('John', 'Doe', 1, 1, '1985-05-15', '2020-01-01', 'john.doe@example.com', '1234567890', '123 Elm Street'),
('Jane', 'Smith', 2, 2, '1990-08-20', '2019-03-15', 'jane.smith@example.com', '2345678901', '456 Oak Street'),
('Emily', 'Jones', 3, 3, '1988-10-10', '2021-05-21', 'emily.jones@example.com', '3456789012', '789 Pine Street'),
('Michael', 'Brown', 4, 4, '1992-12-25', '2018-11-30', 'michael.brown@example.com', '4567890123', '101 Maple Street');

-- Inserting sample data into Salaries
INSERT INTO Salaries (EmployeeID, BaseSalary, Bonus, Deductions, SalaryDate) VALUES
(1, 60000, 5000, 1000, '2023-05-31'),
(2, 80000, 7000, 1500, '2023-05-31'),
(3, 50000, 3000, 500, '2023-05-31'),
(4, 55000, 4000, 600, '2023-05-31');

-- Inserting sample data into Attendance
INSERT INTO Attendance (EmployeeID, Date, Status) VALUES
(1, '2023-06-01', 'Present'),
(2, '2023-06-01', 'Absent'),
(3, '2023-06-01', 'Leave'),
(4, '2023-06-01', 'Present');

-- Inserting sample data into Leave
INSERT INTO Leave_Record (EmployeeID, LeaveType, StartDate, EndDate, Status) VALUES
(1, 'Sick', '2023-06-10', '2023-06-12', 'Pending'),
(2, 'Annual', '2023-07-01', '2023-07-15', 'Approved');

-- Inserting sample data into Performance Reviews
INSERT INTO PerformanceReviews (EmployeeID, ReviewDate, ReviewerName, Comments, Rating) VALUES
(1, '2023-06-15', 'Jane Smith', 'Excellent performance', 5),
(2, '2023-06-18', 'John Doe', 'Needs improvement in punctuality', 3);
