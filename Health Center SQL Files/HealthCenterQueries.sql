-- -----------------------------------------------------
-- Health Center Queries--
-- Author: Timothy King
-- Course: CSCI 225
-- Assignment: Homework 05
-- Date: 4/27/2016
-- Version: 1.0
-- -----------------------------------------------------

SELECT * FROM Final.Doctor;
SELECT count(distinct PatientName) FROM Final.Patient;
SELECT distinct InsuranceCoName FROM Final.Insurance order by InsuranceCoName;
SELECT DocID, DocName, PatientName FROM Final.Doctor, Final.Patient, Final.Doctor_has_Patient WHERE Doctor.DocID = Doctor_has_Patient.DoctorID AND Patient.PatientID = Doctor_has_Patient.PatientID ORDER BY DocName, PatientName; 
SELECT count(PatientName) AS 'Patient Total' FROM Final.Patient;
SELECT DocID, DocName, max(x.max) AS 'Most Appointments' FROM (SELECT count(NextAppointmentDate) AS 'max' FROM Final.Doctor_has_Patient, Final.Doctor WHERE Doctor.DocID = Doctor_has_Patient.DoctorID GROUP BY Doctor_has_Patient.DoctorID) x, Final.Doctor;
SELECT DocName, count(NextAppointmentDate) AS 'Total Appointments' FROM Final.Doctor, Final.Doctor_has_Patient WHERE Doctor.DocID = Doctor_has_Patient.DoctorID GROUP BY Doctor_has_Patient.DoctorID ORDER BY DocName;

SELECT NextAppointmentDate, count(NextAppointmentDate) FROM Final.Doctor_has_Patient GROUP BY NextAppointmentDate;