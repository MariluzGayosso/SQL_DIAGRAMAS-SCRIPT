-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema 5.3-2COCHE_PILOTO
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema 5.3-2COCHE_PILOTO
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `5.3-2COCHE_PILOTO` DEFAULT CHARACTER SET utf8 ;
USE `5.3-2COCHE_PILOTO` ;

-- -----------------------------------------------------
-- Table `5.3-2COCHE_PILOTO`.`PILOTO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `5.3-2COCHE_PILOTO`.`PILOTO` (
  `Nif` INT NOT NULL,
  `Nombre` VARCHAR(45) NULL,
  `Direccion` VARCHAR(45) NULL,
  `table3col` VARCHAR(45) NULL,
  `COCHE_Matricula` INT NOT NULL,
  PRIMARY KEY (`Nif`, `COCHE_Matricula`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `5.3-2COCHE_PILOTO`.`COCHE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `5.3-2COCHE_PILOTO`.`COCHE` (
  `Matricula` INT NOT NULL,
  `Asientos` VARCHAR(45) NULL,
  `Marca` VARCHAR(45) NULL,
  `Modelo` VARCHAR(45) NULL,
  `PILOTO_Nif` INT NOT NULL,
  PRIMARY KEY (`Matricula`, `PILOTO_Nif`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `5.3-2COCHE_PILOTO`.`P-C`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `5.3-2COCHE_PILOTO`.`P-C` (
  `PILOTO_Nif` INT NOT NULL,
  `PILOTO_COCHE_Matricula` INT NOT NULL,
  PRIMARY KEY (`PILOTO_Nif`, `PILOTO_COCHE_Matricula`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
