-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema introDB69048
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema introDB69048
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `introDB69048` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `introDB69048` ;

-- -----------------------------------------------------
-- Table `introDB69048`.`regiones`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `introDB69048`.`regiones` (
  `idRegion` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `regNombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idRegion`),
  UNIQUE INDEX `regNombre` (`regNombre` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 9
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `introDB69048`.`destinos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `introDB69048`.`destinos` (
  `idDestino` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `destNombre` VARCHAR(45) NOT NULL,
  `idRegion` TINYINT UNSIGNED NOT NULL,
  `destPrecio` DECIMAL(9,2) UNSIGNED NOT NULL,
  `destAsientos` TINYINT UNSIGNED NOT NULL,
  `destDisponibles` TINYINT UNSIGNED NOT NULL,
  `destActivo` TINYINT(1) NOT NULL,
  PRIMARY KEY (`idDestino`),
  UNIQUE INDEX `destNombre` (`destNombre` ASC) VISIBLE,
  INDEX `idRegion` (`idRegion` ASC) VISIBLE,
  CONSTRAINT `destinos_ibfk_1`
    FOREIGN KEY (`idRegion`)
    REFERENCES `introDB69048`.`regiones` (`idRegion`))
ENGINE = InnoDB
AUTO_INCREMENT = 10
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `introDB69048`.`monedas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `introDB69048`.`monedas` (
  `id` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `exacto` DECIMAL(10,2) NOT NULL,
  `aproximado` FLOAT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `introDB69048`.`personas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `introDB69048`.`personas` (
  `id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `apellido` VARCHAR(50) NOT NULL,
  `nombre` VARCHAR(50) NOT NULL,
  `dni` INT UNSIGNED NOT NULL,
  `alta` DATE NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `dni` (`dni` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 7
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `introDB69048`.`productos_apple`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `introDB69048`.`productos_apple` (
  `id` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(20) NOT NULL,
  `precio` DECIMAL(9,2) UNSIGNED NOT NULL,
  `stock` SMALLINT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `nombre` (`nombre` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `introDB69048`.`categorias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `introDB69048`.`categorias` (
  `idCategoria` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `catNombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCategoria`),
  UNIQUE INDEX `catNombre_UNIQUE` (`catNombre` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `introDB69048`.`marcas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `introDB69048`.`marcas` (
  `idMarca` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `mkNombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idMarca`),
  UNIQUE INDEX `mkNombre_UNIQUE` (`mkNombre` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `introDB69048`.`productos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `introDB69048`.`productos` (
  `idProducto` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `prdNombre` VARCHAR(45) NOT NULL,
  `prdPrecio` DECIMAL(8,2) UNSIGNED NOT NULL,
  `idMarca` TINYINT UNSIGNED NOT NULL,
  `idCategoria` TINYINT UNSIGNED NOT NULL,
  `prdDescripcion` VARCHAR(1000) NOT NULL,
  `prdImagen` VARCHAR(45) NOT NULL DEFAULT 'noDisponible.png',
  `prdActivo` TINYINT(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`idProducto`),
  UNIQUE INDEX `prdNombre_UNIQUE` (`prdNombre` ASC) VISIBLE,
  INDEX `productos_marcas_idx` (`idMarca` ASC) VISIBLE,
  INDEX `productos_categoria_idx` (`idCategoria` ASC) VISIBLE,
  CONSTRAINT `productos_marcas`
    FOREIGN KEY (`idMarca`)
    REFERENCES `introDB69048`.`marcas` (`idMarca`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `productos_categoria`
    FOREIGN KEY (`idCategoria`)
    REFERENCES `introDB69048`.`categorias` (`idCategoria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
