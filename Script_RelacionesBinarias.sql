-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema ER-RelBin-11
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema ER-RelBin-11
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ER-RelBin-11` DEFAULT CHARACTER SET utf8 ;
USE `ER-RelBin-11` ;

-- -----------------------------------------------------
-- Table `ER-RelBin-11`.`VEHÍCULO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ER-RelBin-11`.`VEHÍCULO` (
  `matrícula` VARCHAR(10) NOT NULL,
  `modelo` VARCHAR(20) NOT NULL,
  `codemp` VARCHAR(15) NOT NULL,
  `fecha_inicio` DATE NOT NULL,
  PRIMARY KEY (`codemp`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;


-- -----------------------------------------------------
-- Table `ER-RelBin-11`.`EMPLEADO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ER-RelBin-11`.`EMPLEADO` (
  `nombre` VARCHAR(45) NOT NULL,
  `VEHÍCULO_codemp` VARCHAR(45) NOT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
