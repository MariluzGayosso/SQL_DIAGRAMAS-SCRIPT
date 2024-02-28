-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Ejemplos
-- -----------------------------------------------------
-- Ejemplos de Transición

-- -----------------------------------------------------
-- Schema Ejemplos
--
-- Ejemplos de Transición
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Ejemplos` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin ;
-- -----------------------------------------------------
-- Schema ejemplos_u3
-- -----------------------------------------------------
USE `Ejemplos` ;

-- -----------------------------------------------------
-- Table `Ejemplos`.`LIBRO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Ejemplos`.`LIBRO` (
  `ISBN` INT NOT NULL,
  `título_principal` VARCHAR(45) NOT NULL,
  `subtítuilo` VARCHAR(45) NULL,
  `editorial` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_bin' NOT NULL,
  `idioma` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ISBN`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Ejemplos`.`AUTOR`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Ejemplos`.`AUTOR` (
  `autor` VARCHAR(30) NOT NULL,
  `LIBRO_ISBN` INT NOT NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Ejemplos`.`EDICIÓN`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Ejemplos`.`EDICIÓN` (
  `número` INT NOT NULL,
  `año` INT NOT NULL,
  `LIBRO_ISBN` INT NOT NULL)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
