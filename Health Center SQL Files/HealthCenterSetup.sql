-- -----------------------------------------------------
-- Health Center Database Setup--
-- Author: Timothy King
-- Course: CSCI 225
-- Assignment: Homework 05
-- Date: 4/27/2016
-- Version: 1.0
-- -----------------------------------------------------
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema Final
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Final
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Final` DEFAULT CHARACTER SET utf8 ;
USE `Final` ;

-- -----------------------------------------------------
-- Table `Final`.`Doctor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Final`.`Doctor` (
  `DocID` INT NOT NULL,
  `DocName` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`DocID`),
  UNIQUE INDEX `DocID_UNIQUE` (`DocID` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Final`.`Insurance`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Final`.`Insurance` (
  `InsuranceCoID` INT NOT NULL,
  `InsuranceCoName` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`InsuranceCoID`),
  UNIQUE INDEX `InsuranceCoID_UNIQUE` (`InsuranceCoID` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Final`.`Patient`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Final`.`Patient` (
  `PatientID` INT NOT NULL,
  `PatientName` VARCHAR(45) NULL,
  `Insurance_InsuranceCoID` INT NOT NULL,
  PRIMARY KEY (`PatientID`),
  UNIQUE INDEX `PatientID_UNIQUE` (`PatientID` ASC),
  INDEX `fk_Patient_Insurance_idx` (`Insurance_InsuranceCoID` ASC),
  CONSTRAINT `fk_Patient_Insurance`
    FOREIGN KEY (`Insurance_InsuranceCoID`)
    REFERENCES `Final`.`Insurance` (`InsuranceCoID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Final`.`Doctor_has_Patient`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Final`.`Doctor_has_Patient` (
 `DoctorID` INT NOT NULL,
  `PatientID` INT NOT NULL,
  `NextAppointmentDate` DATE NOT NULL,
  PRIMARY KEY (`DoctorID`, `PatientID`),
  INDEX `fk_Doctor_has_Patient_Patient1_idx` (`PatientID` ASC),
  INDEX `fk_Doctor_has_Patient_Doctor1_idx` (`DoctorID` ASC),
  CONSTRAINT `fk_Doctor_has_Patient_Doctor1`
    FOREIGN KEY (`DoctorID`)
    REFERENCES `Final`.`Doctor` (`DocID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Doctor_has_Patient_Patient1`
    FOREIGN KEY (`PatientID`)
    REFERENCES `Final`.`Patient` (`PatientID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
