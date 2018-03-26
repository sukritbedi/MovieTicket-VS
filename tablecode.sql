-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`actors`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`actors` (
  `Actor_ID` INT(11) NOT NULL,
  `Actor_Name` VARCHAR(20) CHARACTER SET 'utf8' COLLATE 'utf8_general_ci' NOT NULL,
  `DOB` DATE NOT NULL,
  `Origin` VARCHAR(30) NULL DEFAULT NULL,
  PRIMARY KEY (`Actor_ID`),
  UNIQUE INDEX `Actor_ID_UNIQUE` (`Actor_ID` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`actors_acting`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`actors_acting` (
  `Actor_ID` INT(11) NULL DEFAULT NULL,
  `M_ID` INT(11) NULL DEFAULT NULL,
  INDEX `Actor_ID_idx` (`Actor_ID` ASC),
  CONSTRAINT `Actor_ID`
    FOREIGN KEY (`Actor_ID`)
    REFERENCES `mydb`.`actors` (`Actor_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`cinema`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`cinema` (
  `C_ID` INT(11) NOT NULL,
  `C_Name` VARCHAR(20) NOT NULL,
  `Address` VARCHAR(80) NULL DEFAULT NULL,
  PRIMARY KEY (`C_ID`),
  UNIQUE INDEX `C_ID_UNIQUE` (`C_ID` ASC),
  UNIQUE INDEX `Address_UNIQUE` (`Address` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`cinema_cost`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`cinema_cost` (
  `Cinema_Cost` INT(11) NOT NULL,
  `M_Type` VARCHAR(2) NOT NULL,
  `Box` INT(3) NULL DEFAULT NULL,
  `Couple` INT(3) NULL DEFAULT NULL,
  `Gold` INT(3) NOT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`cinema_numofseats`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`cinema_numofseats` (
  `C_ID` INT(11) NOT NULL,
  `Box` INT(2) NULL DEFAULT NULL,
  `Couple` INT(2) NULL DEFAULT NULL,
  `Gold` INT(3) NOT NULL,
  UNIQUE INDEX `C_ID_UNIQUE` (`C_ID` ASC),
  CONSTRAINT `C_ID`
    FOREIGN KEY (`C_ID`)
    REFERENCES `mydb`.`cinema` (`C_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`movie`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`movie` (
  `M_ID` INT(4) NOT NULL,
  `M_Name` VARCHAR(30) CHARACTER SET 'utf8' COLLATE 'utf8_general_ci' NOT NULL DEFAULT '%%',
  `Duration` DECIMAL(2,1) NULL DEFAULT NULL,
  `Release_Date` DATE NOT NULL,
  PRIMARY KEY (`M_ID`),
  UNIQUE INDEX `M_ID_UNIQUE` (`M_ID` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
ROW_FORMAT = DEFAULT;


-- -----------------------------------------------------
-- Table `mydb`.`movie_genre`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`movie_genre` (
  `M_ID` INT(11) NOT NULL,
  `Genre` VARCHAR(10) NOT NULL,
  INDEX `MoveID_idx` (`M_ID` ASC),
  CONSTRAINT `MoveID`
    FOREIGN KEY (`M_ID`)
    REFERENCES `mydb`.`movie` (`M_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`movie_ratings`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`movie_ratings` (
  `M_ID` INT(11) NOT NULL,
  `Age_Rating` VARCHAR(3) NULL DEFAULT NULL,
  `m_rating` DECIMAL(2,1) NULL DEFAULT NULL,
  INDEX `M_ID_idx` (`M_ID` ASC),
  CONSTRAINT `M_ID`
    FOREIGN KEY (`M_ID`)
    REFERENCES `mydb`.`movie` (`M_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`movie_review`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`movie_review` (
  `M_ID` INT(11) NULL DEFAULT NULL,
  `User_ID` VARCHAR(10) NULL DEFAULT NULL,
  `Review` VARCHAR(80) NULL DEFAULT NULL,
  `User_Rating` DECIMAL(3,1) NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`movie_type`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`movie_type` (
  `M_ID` INT(11) NULL DEFAULT NULL,
  `Timing` INT(4) NULL DEFAULT NULL,
  `C_ID` INT(11) NULL DEFAULT NULL,
  `Language` VARCHAR(20) NULL DEFAULT NULL,
  `M_Type` VARCHAR(2) NULL DEFAULT NULL,
  INDEX `MovieID_idx` (`M_ID` ASC),
  CONSTRAINT `MovieID`
    FOREIGN KEY (`M_ID`)
    REFERENCES `mydb`.`movie` (`M_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`transaction`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`transaction` (
  `Ref_ID` INT(11) NOT NULL,
  `User_ID` VARCHAR(10) NOT NULL,
  `TimeStamp` DATETIME NOT NULL,
  `Payment_Mode` VARCHAR(10) NOT NULL,
  `M_ID` INT(4) NOT NULL,
  `C_ID` INT(11) NOT NULL,
  `Timings` INT(4) NOT NULL,
  `M_Type` VARCHAR(2) NOT NULL,
  `Seat_Type` VARCHAR(6) NOT NULL DEFAULT 'Gold',
  `NumOfSeats` INT(3) NOT NULL,
  PRIMARY KEY (`Ref_ID`),
  UNIQUE INDEX `Ref_ID_UNIQUE` (`Ref_ID` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`user_email`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`user_email` (
  `User_ID` VARCHAR(20) NULL DEFAULT NULL,
  `Email` VARCHAR(35) NOT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`user_general`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`user_general` (
  `User_ID` VARCHAR(20) NOT NULL,
  `Password` VARCHAR(20) NOT NULL,
  `First_Name` VARCHAR(16) CHARACTER SET 'utf8' COLLATE 'utf8_general_ci' NOT NULL,
  `Mid_Name` VARCHAR(10) CHARACTER SET 'utf8' COLLATE 'utf8_general_ci' NULL DEFAULT NULL,
  `Last_Name` VARCHAR(15) CHARACTER SET 'utf8' COLLATE 'utf8_general_ci' NULL DEFAULT NULL,
  PRIMARY KEY (`User_ID`),
  UNIQUE INDEX `User_ID_UNIQUE` (`User_ID` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`user_phone`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`user_phone` (
  `User_ID` VARCHAR(20) NULL DEFAULT NULL,
  `Phone_Number` VARCHAR(45) NOT NULL,
  INDEX `User_ID_idx` (`User_ID` ASC),
  CONSTRAINT `User_ID`
    FOREIGN KEY (`User_ID`)
    REFERENCES `mydb`.`user_general` (`User_ID`)
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
