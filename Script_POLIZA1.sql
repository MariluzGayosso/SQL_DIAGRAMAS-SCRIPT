-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema ER-POLIZA1
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema ER-POLIZA1
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ER-POLIZA1` DEFAULT CHARACTER SET utf8 ;
USE `ER-POLIZA1` ;

-- -----------------------------------------------------
-- Table `ER-POLIZA1`.`BENEFICIARIOS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ER-POLIZA1`.`BENEFICIARIOS` (
  `dni` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `fecha_nacim` DATE NOT NULL,
  PRIMARY KEY (`dni`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ER-POLIZA1`.`PÓLIZA VIDA`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ER-POLIZA1`.`PÓLIZA VIDA` (
  `número` INT NOT NULL,
  `BENEFICIARIOS_dni` INT NOT NULL,
  PRIMARY KEY (`número`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ER-POLIZA1`.`PÓLIZA AUTOMÓVIL`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ER-POLIZA1`.`PÓLIZA AUTOMÓVIL` (
  `número` INT NOT NULL,
  `matrícula` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`número`, `matrícula`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ER-POLIZA1`.`PÓLIZA VIVIENDA`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ER-POLIZA1`.`PÓLIZA VIVIENDA` (
  `domicilio` INT NOT NULL,
  `número` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`número`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ER-POLIZA1`.`PÓLIZA`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ER-POLIZA1`.`PÓLIZA` (
  `fecha_ini` DATE NOT NULL,
  `fecha_fin` DATE NOT NULL,
  `PÓLIZA VIDA_número` INT NOT NULL,
  `PÓLIZA AUTOMÓVIL_número` INT NOT NULL,
  `PÓLIZA AUTOMÓVIL_matrícula` VARCHAR(45) NOT NULL,
  `PÓLIZA VIVIENDA_número` VARCHAR(45) NOT NULL)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
