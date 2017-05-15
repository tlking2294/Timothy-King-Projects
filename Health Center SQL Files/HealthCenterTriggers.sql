-- -----------------------------------------------------
-- Health Center Trigger--
-- Author: Timothy King
-- Course: CSCI 225
-- Assignment: Homework 05
-- Date: 4/27/2016
-- Version: 1.0
-- -----------------------------------------------------

DELIMITER $$

CREATE TRIGGER ChangeAppointmentDate
BEFORE INSERT ON Final.Doctor_has_Patient 
FOR EACH ROW
BEGIN
	DECLARE ApptDate DATE DEFAULT NULL;
    SELECT NextAppointmentDate INTO ApptDate FROM Final.Doctor_has_Patient WHERE DoctorID = NEW.DoctorID AND PatientID = New.PatientID;
    IF(ApptDate = '2016-12-25' OR ApptDate = '2016-12-31') THEN 
		SET NEW.ApptDate = '2016-12-01';
    END IF;
END; $$

DELIMITER ;

