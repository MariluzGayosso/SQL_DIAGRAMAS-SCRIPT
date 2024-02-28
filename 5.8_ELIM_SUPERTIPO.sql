-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema empleado_obra
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema empleado_obra
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `empleado_obra` DEFAULT CHARACTER SET utf8 ;
USE `empleado_obra` ;

-- -----------------------------------------------------
-- Table `empleado_obra`.`EMPLEADO_DE_OBRA`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `empleado_obra`.`EMPLEADO_DE_OBRA` (
  `cod-empleado` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `direccion` VARCHAR(60) NOT NULL,
  PRIMARY KEY (`cod-empleado`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `empleado_obra`.`E-E`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `empleado_obra`.`E-E` (
  `fecha-inicio` VARCHAR(45) NULL,
  `fecha-fin` VARCHAR(45) NULL,
  `EMPLEADO_DE_OBRA_cod-empleado` INT NOT NULL,
  PRIMARY KEY (`EMPLEADO_DE_OBRA_cod-empleado`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `empleado_obra`.`EDIFICIO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `empleado_obra`.`EDIFICIO` (
  `cod-edif` INT NOT NULL,
  `direccion` VARCHAR(60) NOT NULL,
  `ciudad` VARCHAR(45) NOT NULL,
  `E-E_EMPLEADO_DE_OBRA_cod-empleado` INT NOT NULL,
  PRIMARY KEY (`cod-edif`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `empleado_obra`.`ES -UN`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `empleado_obra`.`ES -UN` (
  `tipo` INT NOT NULL,
  `EMPLEADO_DE_OBRA_cod-empleado` INT NOT NULL,
  PRIMARY KEY (`EMPLEADO_DE_OBRA_cod-empleado`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `empleado_obra`.`A-F`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `empleado_obra`.`A-F` (
  `ARQUITECTO_num-colegiado` INT NOT NULL,
  `ARQUITECTO_ES -UN_EMPLEADO_DE_OBRA_cod-empleado` INT NOT NULL,
  PRIMARY KEY (`ARQUITECTO_num-colegiado`, `ARQUITECTO_ES -UN_EMPLEADO_DE_OBRA_cod-empleado`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `empleado_obra`.`ARQUITECTO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `empleado_obra`.`ARQUITECTO` (
  `num-colegiado` INT NOT NULL,
  `ES -UN_EMPLEADO_DE_OBRA_cod-empleado` INT NOT NULL,
  `A-F_ARQUITECTO_num-colegiado` INT NOT NULL,
  `A-F_ARQUITECTO_ES -UN_EMPLEADO_DE_OBRA_cod-empleado` INT NOT NULL,
  PRIMARY KEY (`ES -UN_EMPLEADO_DE_OBRA_cod-empleado`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `empleado_obra`.`CAPATAZ`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `empleado_obra`.`CAPATAZ` (
  `ES -UN_EMPLEADO_DE_OBRA_cod-empleado` INT NOT NULL,
  `C-A_cargo` INT NOT NULL,
  PRIMARY KEY (`ES -UN_EMPLEADO_DE_OBRA_cod-empleado`, `C-A_cargo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `empleado_obra`.`ALBAÑIL`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `empleado_obra`.`ALBAÑIL` (
  `especialidad` INT NOT NULL,
  `ES -UN_EMPLEADO_DE_OBRA_cod-empleado` INT NOT NULL,
  PRIMARY KEY (`ES -UN_EMPLEADO_DE_OBRA_cod-empleado`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `empleado_obra`.`FACULTAD`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `empleado_obra`.`FACULTAD` (
  `cod-facultad` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `ciudad` VARCHAR(45) NOT NULL,
  `A-F_ARQUITECTO_num-colegiado` INT NOT NULL,
  `A-F_ARQUITECTO_ES -UN_EMPLEADO_DE_OBRA_cod-empleado` INT NOT NULL,
  PRIMARY KEY (`cod-facultad`, `A-F_ARQUITECTO_num-colegiado`, `A-F_ARQUITECTO_ES -UN_EMPLEADO_DE_OBRA_cod-empleado`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `empleado_obra`.`C-A`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `empleado_obra`.`C-A` (
  `CAPATAZ_ES -UN_EMPLEADO_DE_OBRA_cod-empleado` INT NOT NULL,
  `CAPATAZ_C-A_cargo` INT NOT NULL,
  `C-A_has_ALBAÑIL_C-A_cargo` INT NOT NULL,
  `C-A_has_ALBAÑIL_ALBAÑIL_ES -UN_EMPLEADO_DE_OBRA_cod-empleado` INT NOT NULL,
  `ALBAÑIL_ES -UN_EMPLEADO_DE_OBRA_cod-empleado` INT NOT NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `empleado_obra`.`HERRAMIENTA`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `empleado_obra`.`HERRAMIENTA` (
  `cod-herramienta` INT NOT NULL,
  `nombre-herramienta` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`cod-herramienta`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `empleado_obra`.`E-E_has_EDIFICIO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `empleado_obra`.`E-E_has_EDIFICIO` (
  `E-E_EMPLEADO_DE_OBRA_cod-empleado` INT NOT NULL,
  `EDIFICIO_cod-edif` INT NOT NULL,
  PRIMARY KEY (`E-E_EMPLEADO_DE_OBRA_cod-empleado`, `EDIFICIO_cod-edif`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `empleado_obra`.`A-H`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `empleado_obra`.`A-H` (
  `ALBAÑIL_ES -UN_EMPLEADO_DE_OBRA_cod-empleado` INT NOT NULL,
  `HERRAMIENTA_cod-herramienta` INT NOT NULL,
  PRIMARY KEY (`ALBAÑIL_ES -UN_EMPLEADO_DE_OBRA_cod-empleado`, `HERRAMIENTA_cod-herramienta`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
