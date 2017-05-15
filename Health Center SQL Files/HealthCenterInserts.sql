-- -----------------------------------------------------
-- Health Center Inserts--
-- Author: Timothy King
-- Course: CSCI 225
-- Assignment: Homework 05
-- Date: 4/27/2016
-- Version: 1.0
-- -----------------------------------------------------

-- Insurance Inserts

INSERT INTO Final.Insurance VALUES(11, "ACME Insurance");
INSERT INTO Final.Insurance VALUES(12, "Purple Star");
INSERT INTO Final.Insurance VALUES(13, "Block Tower");
INSERT INTO Final.Insurance VALUES(14, "All Protect");

-- Patient Inserts 

INSERT INTO Final.Patient VALUES(111, "Max", 11);
INSERT INTO Final.Patient VALUES(222, "Mia", 11);
INSERT INTO Final.Patient VALUES(333, "Pam", 12);
INSERT INTO Final.Patient VALUES(555, "Lee", 13);
INSERT INTO Final.Patient VALUES(666, "Alen", 14);
 
-- Doctor Inserts 

INSERT INTO Final.Doctor VALUES(1, "Dr. Joe");
INSERT INTO Final.Doctor VALUES(2, "Dr. Sue");
INSERT INTO Final.Doctor VALUES(3, "Dr. Kim");
INSERT INTO Final.Doctor VALUES(4, "Dr. Joe");

-- Doctor_Has_Patient Inserts

INSERT INTO Final.Doctor_has_Patient VALUES(1, 111, "2016-12-1");
INSERT INTO Final.Doctor_has_Patient VALUES(1, 222, "2016-12-2");
INSERT INTO Final.Doctor_has_Patient VALUES(1, 333, "2016-12-3");
INSERT INTO Final.Doctor_has_Patient VALUES(2, 333, "2016-12-7");
INSERT INTO Final.Doctor_has_Patient VALUES(3, 555, "2016-12-2");
INSERT INTO Final.Doctor_has_Patient VALUES(3, 111, "2016-12-3");
INSERT INTO Final.Doctor_has_Patient VALUES(4, 666, "2016-12-9");