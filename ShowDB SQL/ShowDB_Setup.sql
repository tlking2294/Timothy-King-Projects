
-- -----------------------------------------------------
-- ShowDB setup: creates database and tables
--
-- Author: Clint Fuchs
-- Course: CSCI 225
-- Assignment: 5
-- Date: 4/1/2016
-- Version: 1.0
-- -----------------------------------------------------



SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

DROP SCHEMA IF EXISTS `ShowDB` ;
CREATE SCHEMA IF NOT EXISTS `ShowDB` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `ShowDB` ;

-- -----------------------------------------------------
-- Table `ShowDB`.`Address`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ShowDB`.`Address` ;

CREATE TABLE IF NOT EXISTS `ShowDB`.`Address` (
  `addressID` INT NOT NULL,
  `street` VARCHAR(45) NOT NULL,
  `city` VARCHAR(45) NOT NULL,
  `state` VARCHAR(45) NOT NULL,
  `zipcode` VARCHAR(45) NOT NULL,
  `apartmentNo` VARCHAR(45) NULL,
  PRIMARY KEY (`addressID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ShowDB`.`Customer`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ShowDB`.`Customer` ;

CREATE TABLE IF NOT EXISTS `ShowDB`.`Customer` (
  `customerID` INT NOT NULL,
  `userFirstName` VARCHAR(45) NOT NULL,
  `userLastName` VARCHAR(45) NOT NULL,
  `age` INT NULL,
  `addressID` INT NOT NULL,
  PRIMARY KEY (`customerID`),
  INDEX `fk_User_Address_idx` (`addressID` ASC),
  CONSTRAINT `fk_User_Address`
    FOREIGN KEY (`addressID`)
    REFERENCES `ShowDB`.`Address` (`addressID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ShowDB`.`Venue`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ShowDB`.`Venue` ;

CREATE TABLE IF NOT EXISTS `ShowDB`.`Venue` (
  `venueID` VARCHAR(45) NOT NULL,
  `venueName` VARCHAR(45) NOT NULL,
  `yearEstablished` DATE NULL,
  `capacity` VARCHAR(45) NULL,
  `addressID` INT NOT NULL,
  INDEX `fk_Venue_Address1_idx` (`addressID` ASC),
  PRIMARY KEY (`venueID`),
  CONSTRAINT `fk_Venue_Address1`
    FOREIGN KEY (`addressID`)
    REFERENCES `ShowDB`.`Address` (`addressID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ShowDB`.`Show`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ShowDB`.`Performance` ;

CREATE TABLE IF NOT EXISTS `ShowDB`.`Performance` (
  `showName` VARCHAR(75) NOT NULL,
  `showDate` DATE NOT NULL,
  `venueID` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`showName`, `showDate`),
  INDEX `fk_Show_Venue1_idx` (`venueID` ASC),
  CONSTRAINT `fk_Show_Venue1`
    FOREIGN KEY (`venueID`)
    REFERENCES `ShowDB`.`Venue` (`venueID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ShowDB`.`ShowTicketPurchase`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ShowDB`.`ShowTicketPurchase` ;

CREATE TABLE IF NOT EXISTS `ShowDB`.`ShowTicketPurchase` (
  `customerID` INT NOT NULL,
  `showName` VARCHAR(75) NOT NULL,
  `showDate` DATE NOT NULL,
  `numberOfTickets` INT NULL,
  `ticketPrice` FLOAT NULL,
  PRIMARY KEY (`showDate`, `showName`, `customerID`),
  INDEX `fk_ShowRegistration_Customer1_idx` (`customerID` ASC),
  INDEX `fk_ShowTicketPurchase_Show1_idx` (`showName` ASC, `showDate` ASC),
  CONSTRAINT `fk_ShowRegistration_Customer1`
    FOREIGN KEY (`customerID`)
    REFERENCES `ShowDB`.`Customer` (`customerID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ShowTicketPurchase_Performance1`
    FOREIGN KEY (`showName` , `showDate`)
    REFERENCES `ShowDB`.`Performance` (`showName` , `showDate`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
