-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`VEHÍCULO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`VEHÍCULO` (
  `modelo` VARCHAR(15) NOT NULL,
  `CONDUCE_matricula` VARCHAR(10) NOT NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`EMPLEADO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`EMPLEADO` (
  `nombre` VARCHAR(30) NOT NULL,
  `CONDUCE_codemp` INT NOT NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`EMPLEADO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`EMPLEADO` (
  `nombre` VARCHAR(30) NOT NULL,
  `CONDUCE_codemp` INT NOT NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`VEHÍCULO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`VEHÍCULO` (
  `modelo` VARCHAR(15) NOT NULL,
  `CONDUCE_matricula` VARCHAR(10) NOT NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`CONDUCE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`CONDUCE` (
  `codemp` INT NOT NULL,
  `matricula` VARCHAR(10) NOT NULL,
  `fecha_inicio` DATE NOT NULL,
  PRIMARY KEY (`codemp`, `matricula`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`VEHÍCULO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`VEHÍCULO` (
  `modelo` VARCHAR(15) NOT NULL,
  `CONDUCE_matricula` VARCHAR(10) NOT NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`EMPLEADO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`EMPLEADO` (
  `nombre` VARCHAR(30) NOT NULL,
  `CONDUCE_codemp` INT NOT NULL)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
