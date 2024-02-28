-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema PisoPersona5.4
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema PisoPersona5.4
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `PisoPersona5.4` DEFAULT CHARACTER SET utf8 ;
USE `PisoPersona5.4` ;

-- -----------------------------------------------------
-- Table `PisoPersona5.4`.`PERSONA`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PisoPersona5.4`.`PERSONA` (
  `Nif` INT NOT NULL,
  `Nombre` VARCHAR(45) NULL,
  `Apellidos` VARCHAR(45) NULL,
  PRIMARY KEY (`Nif`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PisoPersona5.4`.`PISO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PisoPersona5.4`.`PISO` (
  `Cod-piso` INT NOT NULL,
  `calle` VARCHAR(45) NULL,
  `número` VARCHAR(45) NULL,
  `planta` VARCHAR(45) NULL,
  `puerta` VARCHAR(45) NULL,
  PRIMARY KEY (`Cod-piso`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PisoPersona5.4`.`P-P`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PisoPersona5.4`.`P-P` (
  `Persona_Nif` INT NOT NULL,
  `Precio_alquiler` DOUBLE NULL,
  `Piso_Cod-piso` INT NOT NULL,
  PRIMARY KEY (`Persona_Nif`, `Piso_Cod-piso`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PisoPersona5.4`.`DEPARTAMENTO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PisoPersona5.4`.`DEPARTAMENTO` (
  `Cod_Dpto` INT NOT NULL,
  `Nombre_Dpto` VARCHAR(45) NULL,
  PRIMARY KEY (`Cod_Dpto`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PisoPersona5.4`.`PROFESOR`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PisoPersona5.4`.`PROFESOR` (
  `Nif` INT NULL,
  `Nombre` VARCHAR(45) NULL,
  `Direccion` VARCHAR(45) NULL,
  `funcion` VARCHAR(45) NULL,
  `DEPARTAMENTO_Cod_Dpto` INT NOT NULL,
  PRIMARY KEY (`DEPARTAMENTO_Cod_Dpto`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
