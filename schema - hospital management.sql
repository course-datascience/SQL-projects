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

