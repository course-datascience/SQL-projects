USE HOSPITAL_MANAGEMENT;
-- Inserting more data into Patients
INSERT INTO Patients (PatientId,FirstName, LastName, DateOfBirth, Gender, PhoneNumber, Email, Address, EmergencyContact)
VALUES 
(1,'Mary', 'Jane', '1975-05-20', 'Female', '5551112222', 'mary.jane@example.com', '321 Oak St', 'Peter Parker'),
(2,'James', 'Bond', '1968-04-13', 'Male', '5553334444', 'james.bond@example.com', '007 Secret St', 'Moneypenny'),
(3,'Peter', 'Parker', '1995-06-10', 'Male', '5555556666', 'peter.parker@example.com', '100 Spider St', 'Mary Jane'),
(4,'Diana', 'Prince', '1985-03-21', 'Female', '5557778888', 'diana.prince@example.com', '123 Amazon St', 'Steve Trevor'),
(5,'Preetha','Reddy','1990-09-04','Female','6578398707','preetha.reddy@example.com','345 kent st','Gowtham Balaji');

-- Inserting more data into Doctors
INSERT INTO Doctors (FirstName, LastName, Specialty, PhoneNumber, Email, Address)
VALUES 
('Bruce', 'Wayne', 'Orthopedics', '5559990000', 'bruce.wayne@example.com', 'Wayne Manor'),
('Clark', 'Kent', 'Pediatrics', '5551113333', 'clark.kent@example.com', 'Kent Farm'),
('Tony', 'Stark', 'Neurology', '5552224444', 'tony.stark@example.com', 'Stark Tower');


-- Inserting more data into Appointments
INSERT INTO Appointments (PatientID, DoctorID, AppointmentDate, AppointmentTime, Reason, Status)
VALUES 
(2, 2, '2023-07-21', '11:00:00', 'Heart checkup', 'Scheduled'),
(3, 3, '2023-07-22', '12:00:00', 'Annual checkup', 'Scheduled'),
(4, 4, '2023-07-23', '09:00:00', 'Flu symptoms', 'Scheduled'),
(5, 1, '2023-07-24', '10:30:00', 'Routine checkup', 'Scheduled'),
(1, 2, '2023-07-25', '14:00:00', 'Follow-up visit', 'Scheduled');

-- Inserting more data into MedicalRecords
INSERT INTO MedicalRecords (PatientID, DoctorID, VisitDate, Diagnosis, Treatment, Prescription)
VALUES 
(2, 2, '2023-07-21', 'Hypertension', 'Medication', 'Amlodipine'),
(3, 3, '2023-07-22', 'Allergies', 'Antihistamines', 'Loratadine'),
(4, 4, '2023-07-23', 'Flu', 'Rest and hydration', 'Tamiflu'),
(5, 1, '2023-07-24', 'Routine checkup', 'Regular exercise', 'Multivitamins');

-- Inserting more data into Departments
INSERT INTO Departments (DepartmentName)
VALUES 
('Orthopedics'), 
('Pediatrics'), 
('Neurology');


-- Inserting more data into DoctorDepartments
INSERT INTO DoctorDepartments (DoctorID, DepartmentID)
VALUES 
(2, 2),
(3, 3),
(1, 1),
(2, 1);
