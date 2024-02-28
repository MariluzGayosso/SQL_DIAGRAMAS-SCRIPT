-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema EJEMPLOS.2
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema EJEMPLOS.2
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `EJEMPLOS.2` DEFAULT CHARACTER SET utf8 ;
USE `EJEMPLOS.2` ;

-- -----------------------------------------------------
-- Table `EJEMPLOS.2`.`EMPLEADO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `EJEMPLOS.2`.`EMPLEADO` (
  `Nif` INT NULL,
  `Nombre` VARCHAR(45) NOT NULL,
  `Direccion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Nif`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `EJEMPLOS.2`.`DEPARTAMENTO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `EJEMPLOS.2`.`DEPARTAMENTO` (
  `Cod-Dpto` INT NULL,
  `Nombre` VARCHAR(45) NOT NULL,
  `Localidad` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Cod-Dpto`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `EJEMPLOS.2`.`EMP-DPTO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `EJEMPLOS.2`.`EMP-DPTO` (
  `EMPLEADO_Nif` INT NOT NULL,
  `DEPARTAMENTO_Cod-Dpto` INT NOT NULL,
  PRIMARY KEY (`EMPLEADO_Nif`, `DEPARTAMENTO_Cod-Dpto`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
