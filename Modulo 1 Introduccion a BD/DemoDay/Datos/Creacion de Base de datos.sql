
-- -----------------------------------------------------
-- Schema controlvial
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `controlvial` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `controlvial` ;

-- -----------------------------------------------------
-- Table `controlvial`.`catalogo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `controlvial`.`catalogo` (
  `Id` INT NOT NULL,
  `Brand` TEXT NULL DEFAULT NULL,
  `Model` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`Id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `controlvial`.`vehiculos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `controlvial`.`vehiculos` (
  `Id` VARCHAR(256) NOT NULL,
  `Color` TEXT NULL DEFAULT NULL,
  `IdVehicleCatalog` INT NULL DEFAULT NULL,
  PRIMARY KEY (`Id`),
  INDEX `VehicloCatalogo_idx` (`IdVehicleCatalog` ASC) VISIBLE,
  CONSTRAINT `VehicloCatalogo`
    FOREIGN KEY (`IdVehicleCatalog`)
    REFERENCES `controlvial`.`catalogo` (`Id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `controlvial`.`motivos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `controlvial`.`motivos` (
  `Id` VARCHAR(256) NOT NULL,
  `Code` TEXT NULL DEFAULT NULL,
  `Note` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`Id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `controlvial`.`usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `controlvial`.`usuarios` (
  `Id` VARCHAR(256) CHARACTER SET 'utf8' NOT NULL,
  `Codigo` TEXT NULL DEFAULT NULL,
  `Nombre` TEXT NULL DEFAULT NULL,
  `Apellidos` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`Id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `controlvial`.`infracciones`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `controlvial`.`infracciones` (
  `Id` VARCHAR(256) NOT NULL,
  `IdVehicle` VARCHAR(256) NULL DEFAULT NULL,
  `idInfringementReason` VARCHAR(256) NULL DEFAULT NULL,
  `IdClamp01` TEXT NULL DEFAULT NULL,
  `Latitude` DOUBLE NULL DEFAULT NULL,
  `Longitude` DOUBLE NULL DEFAULT NULL,
  `PayDate` TEXT NULL DEFAULT NULL,
  `CreationDate` TEXT NULL DEFAULT NULL,
  `LastChange` TEXT NULL DEFAULT NULL,
  `InstallerNote` TEXT NULL DEFAULT NULL,
  `PlaceOfPayment` TEXT NULL DEFAULT NULL,
  `ReleaseRequestDate` TEXT NULL DEFAULT NULL,
  `CloseDate` TEXT NULL DEFAULT NULL,
  `LatitudeOperator` DOUBLE NULL DEFAULT NULL,
  `LongitudeOperator` DOUBLE NULL DEFAULT NULL,
  `IdCreator` VARCHAR(256) CHARACTER SET 'utf8' NOT NULL,
  `Attender` VARCHAR(256) CHARACTER SET 'utf8' NOT NULL,
  PRIMARY KEY (`Id`),
  INDEX `vehiculo_idx` (`IdVehicle` ASC) VISIBLE,
  INDEX `motivos_idx` (`idInfringementReason` ASC) VISIBLE,
  INDEX `fk_infracciones_usuarios1_idx` (`IdCreator` ASC) VISIBLE,
  INDEX `fk_infracciones_usuarios2_idx` (`Attender` ASC) VISIBLE,
  CONSTRAINT `vehiculos`
    FOREIGN KEY (`IdVehicle`)
    REFERENCES `controlvial`.`vehiculos` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `motivos`
    FOREIGN KEY (`idInfringementReason`)
    REFERENCES `controlvial`.`motivos` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_infracciones_usuarios1`
    FOREIGN KEY (`IdCreator`)
    REFERENCES `controlvial`.`usuarios` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_infracciones_usuarios2`
    FOREIGN KEY (`Attender`)
    REFERENCES `controlvial`.`usuarios` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `controlvial`.`traking`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `controlvial`.`traking` (
  `Id` BIGINT NULL DEFAULT NULL,
  `IdUser` VARCHAR(256) CHARACTER SET 'utf8' NULL DEFAULT NULL,
  `Latitude` DOUBLE NULL DEFAULT NULL,
  `Longitude` DOUBLE NULL DEFAULT NULL,
  `Color` TEXT NULL DEFAULT NULL,
  `CreationDate` TEXT NULL DEFAULT NULL,
  `CommunicationFail` INT NULL DEFAULT NULL,
  `IdDevice` TEXT NULL DEFAULT NULL,
  `Validate` INT NULL DEFAULT NULL,
  `distance_KM` DOUBLE NULL DEFAULT NULL,
  `timeDiff_Hour` DOUBLE NULL DEFAULT NULL,
  `speed_KM_Hour` DOUBLE NULL DEFAULT NULL,
  `isOutlier` INT NULL DEFAULT NULL,
  `IdNumeric` INT NOT NULL,
  PRIMARY KEY (`IdNumeric`),
  INDEX `Usuariotracking_idx` (`IdUser` ASC) VISIBLE,
  CONSTRAINT `usuario`
    FOREIGN KEY (`IdUser`)
    REFERENCES `controlvial`.`usuarios` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

