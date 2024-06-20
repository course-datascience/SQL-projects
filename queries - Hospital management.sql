USE HOSPITAL_MANAGEMENT;

SELECT * FROM Patients;

SELECT d.*
FROM Doctors d
JOIN DoctorDepartments dd ON d.DoctorID = dd.DoctorID
JOIN Departments dp ON dd.DepartmentID = dp.DepartmentID
WHERE dp.DepartmentName = 'Orthopedics';

SELECT a.*
FROM Appointments a
WHERE a.DoctorID = 1;

SELECT mr.*
FROM MedicalRecords mr
WHERE mr.PatientID = 3;

SELECT *
FROM Appointments
WHERE PatientID = 1 AND AppointmentDate <= CURDATE()
ORDER BY AppointmentDate, AppointmentTime
LIMIT 1;

UPDATE Patients
SET PhoneNumber = '9876543210', Address = '789 Maple St'
WHERE PatientID = 1;
select * from patients;

UPDATE Appointments
SET Status = 'Completed'
WHERE AppointmentID = 1;
select * from appointments;

UPDATE Doctors
SET Specialty = 'General Practice'
WHERE DoctorID = 1;
select * from doctors;

DELETE FROM Patients
WHERE PatientID = 1;

DELETE FROM Doctors
WHERE DoctorID = 1;

DELETE FROM Appointments
WHERE AppointmentID = 1;


DELETE FROM MedicalRecords
WHERE RecordID = 1;
select * from medicalrecords;
