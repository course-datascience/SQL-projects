-- Retrieve all employees
SELECT * FROM Employees;

-- Retrieve all employees in the Engineering department
SELECT e.*
FROM Employees e
JOIN Departments d ON e.DepartmentID = d.DepartmentID
WHERE d.DepartmentName = 'Engineering';

-- Retrieve salary details for an employee
SELECT s.*
FROM Salaries s
WHERE s.EmployeeID = 1;

-- Retrieve attendance records for a specific date
SELECT a.*
FROM Attendance a
WHERE a.Date = '2023-06-01';

-- Retrieve leave requests for an employee
SELECT l.*
FROM Leave_record l
WHERE l.EmployeeID = 1;

-- Retrieve performance reviews for an employee
SELECT pr.*
FROM PerformanceReviews pr
WHERE pr.EmployeeID = 1;

-- Update employee information
UPDATE Employees
SET Email = 'john.newemail@example.com', PhoneNumber = '0987654321'
WHERE EmployeeID = 1;
select * from employees;

-- Approve a leave request
UPDATE Leave_record
SET Status = 'Approved'
WHERE LeaveID = 1;
select * from leave_record;

-- Delete an employee record
DELETE FROM Employees
WHERE EmployeeID = 1;
