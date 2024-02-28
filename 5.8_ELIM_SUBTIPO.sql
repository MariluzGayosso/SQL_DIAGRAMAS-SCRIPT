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
-- Table `mydb`.`EDIFICIO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`EDIFICIO` (
  `cod-edif` INT NOT NULL,
  `direccion` VARCHAR(60) NOT NULL,
  `ciudad` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`cod-edif`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`E-A`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`E-A` (
  `fecha-inicio` VARCHAR(45) NOT NULL,
  `fecha-fin` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`fecha-inicio`, `fecha-fin`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`E-C`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`E-C` (
  `fecha-inicio` INT NOT NULL,
  `fecha-fin` VARCHAR(45) NOT NULL,
  `EDIFICIO_cod-edif` INT NOT NULL,
  PRIMARY KEY (`EDIFICIO_cod-edif`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`E-AL`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`E-AL` (
  `fecha-inicio` INT NOT NULL,
  `fecha-fin` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`fecha-inicio`, `fecha-fin`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`ARQUITECTO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`ARQUITECTO` (
  `cod-empleado` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `direccion` VARCHAR(60) NOT NULL,
  `num-colegiado` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`cod-empleado`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`CAPATAZ`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`CAPATAZ` (
  `cod-empleado` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `direccion` VARCHAR(60) NOT NULL,
  PRIMARY KEY (`cod-empleado`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`ALBAÑIL`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`ALBAÑIL` (
  `cod-empleado` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `direccion` VARCHAR(60) NOT NULL,
  `especialidad` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`cod-empleado`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`A-F`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`A-F` (
  `ARQUITECTO_cod-empleado` INT NOT NULL,
  PRIMARY KEY (`ARQUITECTO_cod-empleado`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`FACULTAD`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`FACULTAD` (
  `cod-facultad` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `ciudad` VARCHAR(45) NOT NULL,
  `A-F_ARQUITECTO_cod-empleado` INT NOT NULL,
  PRIMARY KEY (`cod-facultad`, `A-F_ARQUITECTO_cod-empleado`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`C-A`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`C-A` (
  `CAPATAZ_cod-empleado` INT NOT NULL,
  PRIMARY KEY (`CAPATAZ_cod-empleado`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`A-H`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`A-H` (
  `utiliza` INT NOT NULL,
  PRIMARY KEY (`utiliza`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`HERRAMIENTA`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`HERRAMIENTA` (
  `cod-herrami` INT NOT NULL,
  `nombre-herram` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`cod-herrami`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`E-C_has_CAPATAZ`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`E-C_has_CAPATAZ` (
  `E-C_EDIFICIO_cod-edif` INT NOT NULL,
  `CAPATAZ_cod-empleado` INT NOT NULL,
  PRIMARY KEY (`E-C_EDIFICIO_cod-edif`, `CAPATAZ_cod-empleado`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`C-A_has_ALBAÑIL`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`C-A_has_ALBAÑIL` (
  `C-A_CAPATAZ_cod-empleado` INT NOT NULL,
  `ALBAÑIL_cod-empleado` INT NOT NULL,
  PRIMARY KEY (`C-A_CAPATAZ_cod-empleado`, `ALBAÑIL_cod-empleado`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`E-A_has_EDIFICIO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`E-A_has_EDIFICIO` (
  `E-A_fecha-inicio` VARCHAR(45) NOT NULL,
  `E-A_fecha-fin` VARCHAR(45) NOT NULL,
  `EDIFICIO_cod-edif` INT NOT NULL,
  PRIMARY KEY (`E-A_fecha-inicio`, `E-A_fecha-fin`, `EDIFICIO_cod-edif`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`E-AL_has_EDIFICIO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`E-AL_has_EDIFICIO` (
  `E-AL_fecha-inicio` INT NOT NULL,
  `E-AL_fecha-fin` VARCHAR(45) NOT NULL,
  `EDIFICIO_cod-edif` INT NOT NULL,
  PRIMARY KEY (`E-AL_fecha-inicio`, `E-AL_fecha-fin`, `EDIFICIO_cod-edif`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`E-A_has_ARQUITECTO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`E-A_has_ARQUITECTO` (
  `E-A_fecha-inicio` VARCHAR(45) NOT NULL,
  `E-A_fecha-fin` VARCHAR(45) NOT NULL,
  `ARQUITECTO_cod-empleado` INT NOT NULL,
  PRIMARY KEY (`E-A_fecha-inicio`, `E-A_fecha-fin`, `ARQUITECTO_cod-empleado`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`E-AL_has_ALBAÑIL`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`E-AL_has_ALBAÑIL` (
  `E-AL_fecha-inicio` INT NOT NULL,
  `E-AL_fecha-fin` VARCHAR(45) NOT NULL,
  `ALBAÑIL_cod-empleado` INT NOT NULL,
  PRIMARY KEY (`E-AL_fecha-inicio`, `E-AL_fecha-fin`, `ALBAÑIL_cod-empleado`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`ALBAÑIL_has_A-H`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`ALBAÑIL_has_A-H` (
  `ALBAÑIL_cod-empleado` INT NOT NULL,
  `A-H_utiliza` INT NOT NULL,
  PRIMARY KEY (`ALBAÑIL_cod-empleado`, `A-H_utiliza`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`A-H_has_HERRAMIENTA`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`A-H_has_HERRAMIENTA` (
  `A-H_utiliza` INT NOT NULL,
  `HERRAMIENTA_cod-herrami` INT NOT NULL,
  PRIMARY KEY (`A-H_utiliza`, `HERRAMIENTA_cod-herrami`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
