CREATE DATABASE IF NOT EXISTS HOSPITAL_MANAGEMENT;
USE HOSPITAL_MANAGEMENT;
CREATE TABLE Patients (
  PatientID INT PRIMARY KEY AUTO_INCREMENT,
  FirstName VARCHAR(50) NOT NULL,
  LastName VARCHAR(50) NOT NULL,
  DateOfBirth DATE,
  Gender ENUM('Male', 'Female', 'Other'),
  PhoneNumber VARCHAR(15),
  Email VARCHAR(100),
  Address TEXT,
  EmergencyContact VARCHAR(50)
);

CREATE TABLE Doctors (
  DoctorID INT PRIMARY KEY AUTO_INCREMENT,
  FirstName VARCHAR(50) NOT NULL,
  LastName VARCHAR(50) NOT NULL,
  Specialty VARCHAR(100),
  PhoneNumber VARCHAR(15),
  Email VARCHAR(100),
  Address TEXT
);

CREATE TABLE Appointments (
  AppointmentID INT PRIMARY KEY AUTO_INCREMENT,
  PatientID INT,
  DoctorID INT,
  AppointmentDate DATE,
  AppointmentTime TIME,
  Reason TEXT,
  Status ENUM('Scheduled', 'Completed', 'Cancelled'),
  FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
  FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);

CREATE TABLE MedicalRecords (
  RecordID INT PRIMARY KEY AUTO_INCREMENT,
  PatientID INT,
  DoctorID INT,
  VisitDate DATE,
  Diagnosis TEXT,
  Treatment TEXT,
  Prescription TEXT,
  FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
  FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);

CREATE TABLE Departments (
  DepartmentID INT PRIMARY KEY AUTO_INCREMENT,
  DepartmentName VARCHAR(100) NOT NULL
);

CREATE TABLE DoctorDepartments (
  DoctorID INT,
  DepartmentID INT,
  PRIMARY KEY (DoctorID, DepartmentID),
  FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID),
  FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

-- ADDING DATA

-- 1.INSERTING A NEW PATIENT
INSERT INTO Patients (FirstName, LastName, DateOfBirth, Gender, PhoneNumber, Email, Address, EmergencyContact)
VALUES ('John', 'Doe', '1980-01-15', 'Male', '1234567890', 'john.doe@example.com', '123 Main St', 'Jane Doe');

-- 2.INSERTING A NEW DOCTOR
INSERT INTO Doctors (FirstName, LastName, Specialty, PhoneNumber, Email, Address)
VALUES ('Alice', 'Smith', 'Cardiology', '0987654321', 'alice.smith@example.com', '456 Elm St');

-- 3.SCHEDULE A NEW APPOINTENT
INSERT INTO Appointments (PatientID, DoctorID, AppointmentDate, AppointmentTime, Reason, Status)
VALUES (1, 1, '2023-07-20', '10:00:00', 'Routine checkup', 'Scheduled');

-- 4.ADD A MEDICAL RECORD
INSERT INTO MedicalRecords (PatientID, DoctorID, VisitDate, Diagnosis, Treatment, Prescription)
VALUES (1, 1, '2023-07-20', 'Hypertension', 'Medication', 'Lisinopril');

-- 5.CREATE A NEW DEPARTMENT
INSERT INTO Departments (DepartmentName)
VALUES ('Cardiology');

-- 6. ASSIGN A DOCTOR TO A DEPARTMENT
INSERT INTO DoctorDepartments (DoctorID, DepartmentID)
VALUES (1, 1);

-- RETRIEVING DATA
-- 1.GET ALL PATIENTS
SELECT * FROM Patients;

-- 2.GET ALL DOCTORS IN A SPECIFIC DEPARTMENT
SELECT d.*
FROM Doctors AS d
JOIN DoctorDepartments AS dd ON d.DoctorID = dd.DoctorID
JOIN Departments AS dp ON dd.DepartmentID = dp.DepartmentID
WHERE dp.DepartmentName = 'Cardiology';

-- 3.Get all appointments for a specific doctor
SELECT a.*
FROM Appointments a
WHERE a.DoctorID = 1;

-- 4.Get all medical records for a specific patient:
SELECT mr.*
FROM MedicalRecords mr
WHERE mr.PatientID = 1;

-- 5.Get the next appointment for a specific patient
SELECT *
FROM Appointments
WHERE PatientID = 1 AND AppointmentDate >= CURDATE()
ORDER BY AppointmentDate, AppointmentTime
LIMIT 1;








