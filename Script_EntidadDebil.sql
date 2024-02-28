-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema ER-EntidadDebil
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema ER-EntidadDebil
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ER-EntidadDebil` DEFAULT CHARACTER SET utf8 ;
USE `ER-EntidadDebil` ;

-- -----------------------------------------------------
-- Table `ER-EntidadDebil`.`DEPARTAMENTO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ER-EntidadDebil`.`DEPARTAMENTO` (
  `num_depto` INT NOT NULL,
  `nombre` VARCHAR(45) NULL,
  `presupuesto` VARCHAR(45) NULL,
  PRIMARY KEY (`num_depto`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ER-EntidadDebil`.`EMPLEADO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ER-EntidadDebil`.`EMPLEADO` (
  `num_emp` INT NOT NULL,
  `nombre` VARCHAR(45) NULL,
  `fecha_ingreso` VARCHAR(45) NULL,
  `DEPARTAMENTO_num_depto` INT NOT NULL,
  PRIMARY KEY (`num_emp`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
