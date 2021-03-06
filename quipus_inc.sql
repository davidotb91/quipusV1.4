SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

SHOW WARNINGS;
SHOW WARNINGS;
SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `administrador`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `administrador` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `administrador` (
  `ID_ADMINISTRADOR` INT(11) NOT NULL AUTO_INCREMENT ,
  `CI_ADMINISTRADOR` CHAR(10) NOT NULL ,
  `NOMBRE_ADIMINISTRADOR` CHAR(20) NOT NULL ,
  `PASSWORD_ADMINISTRADOR` CHAR(15) NOT NULL ,
  PRIMARY KEY (`ID_ADMINISTRADOR`) )
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `doctor`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `doctor` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `doctor` (
  `ID_DOCTOR` INT(11) NOT NULL AUTO_INCREMENT ,
  `NOMBRES_DOCTOR` CHAR(20) NOT NULL ,
  `APELLIDOS_DOCTOR` CHAR(20) NOT NULL ,
  `CI_DOCTOR` CHAR(10) NOT NULL ,
  `ESPECIALIDAD_DOCTOR` CHAR(20) NOT NULL ,
  `NUM_CONSULTORIO_DOCTOR` INT(11) NOT NULL ,
  `EMAIL_DOCTOR` CHAR(20) NOT NULL ,
  `TELEFONO_FIJO_DOCTOR` INT(11) NOT NULL ,
  `CELULAR_DOCTOR` INT(11) NOT NULL ,
  `FECHA_NACIMIENTO_DOCTOR` DATE NOT NULL ,
  `PASSWORD_DOCTOR` CHAR(20) NOT NULL ,
  PRIMARY KEY (`ID_DOCTOR`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `ficha_clinica`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ficha_clinica` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `ficha_clinica` (
  `ID_FICHA_CLINICA` INT(11) NOT NULL AUTO_INCREMENT ,
  `ID_HISTORIA_CLINICA` INT(11) NULL DEFAULT NULL ,
  `FECHA_FICHA_CLINICA` DATE NOT NULL ,
  `NUM_FICHA_CLINICA` INT(11) NOT NULL ,
  PRIMARY KEY (`ID_FICHA_CLINICA`) ,
  INDEX `FK_RELATIONSHIP_6` (`ID_HISTORIA_CLINICA` ASC) ,
  CONSTRAINT `FK_RELATIONSHIP_6`
    FOREIGN KEY (`ID_HISTORIA_CLINICA` )
    REFERENCES `historia_clinica` (`ID_HISTORIA_CLINICA` ))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `historia_clinica`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `historia_clinica` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `historia_clinica` (
  `ID_HISTORIA_CLINICA` INT(11) NOT NULL AUTO_INCREMENT ,
  `ID_FICHA_CLINICA` INT(11) NULL DEFAULT NULL ,
  `ID_DOCTOR` INT(11) NULL DEFAULT NULL ,
  `FECHA_HISTORIA_CLINICA` DATE NOT NULL ,
  `MOTIVO_HISTORIA_CLINICA` CHAR(20) NOT NULL ,
  `NUM_HISTORIA_CLINICA` INT(11) NOT NULL ,
  `CODICO_HISTORIA_CLINICA` CHAR(10) NOT NULL ,
  `REGISTRO_DENTAL_FICHA_DENTAL` CHAR(20) NULL DEFAULT NULL ,
  `DIAGNOSTICO_FICHA_DENTAL` CHAR(250) NULL DEFAULT NULL ,
  PRIMARY KEY (`ID_HISTORIA_CLINICA`) ,
  INDEX `FK_RELATIONSHIP_4` (`ID_DOCTOR` ASC) ,
  INDEX `FK_RELATIONSHIP_7` (`ID_FICHA_CLINICA` ASC) ,
  CONSTRAINT `FK_RELATIONSHIP_4`
    FOREIGN KEY (`ID_DOCTOR` )
    REFERENCES `doctor` (`ID_DOCTOR` ),
  CONSTRAINT `FK_RELATIONSHIP_7`
    FOREIGN KEY (`ID_FICHA_CLINICA` )
    REFERENCES `ficha_clinica` (`ID_FICHA_CLINICA` ))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `paciente`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `paciente` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `paciente` (
  `ID_PACIENTE` INT(11) NOT NULL AUTO_INCREMENT ,
  `ID_HISTORIA_CLINICA` INT(11) NULL DEFAULT NULL ,
  `ID_CITA` INT(11) NULL DEFAULT NULL ,
  `NOMBRES_PACIENTE` CHAR(20) NOT NULL ,
  `APELLIDOS_PACIENTE` CHAR(20) NOT NULL ,
  `CI_PACIENTE` CHAR(10) NOT NULL ,
  `EMAIL_PACIENTE` CHAR(20) NOT NULL ,
  `TELEFONO_FIJO_PACIENTE` DATE NOT NULL ,
  `CELULAR_PACIENTE` INT(11) NULL DEFAULT NULL ,
  `PASSWORD_PACIENTE` INT(11) NOT NULL ,
  `TIPO_SANGRE_PACIENTE` CHAR(4) NULL DEFAULT NULL ,
  `ALERGIAS_PACIENTE` CHAR(200) NULL DEFAULT NULL ,
  PRIMARY KEY (`ID_PACIENTE`) ,
  INDEX `FK_RELATIONSHIP_2` (`ID_CITA` ASC) ,
  INDEX `FK_RELATIONSHIP_5` (`ID_HISTORIA_CLINICA` ASC) ,
  CONSTRAINT `FK_RELATIONSHIP_2`
    FOREIGN KEY (`ID_CITA` )
    REFERENCES `cita` (`ID_CITA` ),
  CONSTRAINT `FK_RELATIONSHIP_5`
    FOREIGN KEY (`ID_HISTORIA_CLINICA` )
    REFERENCES `historia_clinica` (`ID_HISTORIA_CLINICA` ))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `cita`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cita` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `cita` (
  `ID_CITA` INT(11) NOT NULL AUTO_INCREMENT ,
  `ID_PACIENTE` INT(11) NULL DEFAULT NULL ,
  `ID_DOCTOR` INT(11) NULL DEFAULT NULL ,
  `FECHA_CITA_MEDICA` DATE NOT NULL ,
  `HORA_CITA_MEDICA` TIME NOT NULL ,
  `CODIGO_CITA_MEDICA` CHAR(10) NOT NULL ,
  PRIMARY KEY (`ID_CITA`) ,
  INDEX `FK_RELATIONSHIP_1` (`ID_DOCTOR` ASC) ,
  INDEX `FK_RELATIONSHIP_3` (`ID_PACIENTE` ASC) ,
  CONSTRAINT `FK_RELATIONSHIP_1`
    FOREIGN KEY (`ID_DOCTOR` )
    REFERENCES `doctor` (`ID_DOCTOR` ),
  CONSTRAINT `FK_RELATIONSHIP_3`
    FOREIGN KEY (`ID_PACIENTE` )
    REFERENCES `paciente` (`ID_PACIENTE` ))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `proveedor`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proveedor` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `proveedor` (
  `ID_PROVEEDOR` INT(11) NOT NULL AUTO_INCREMENT ,
  `NOMBRE_PROVEEDOR` CHAR(20) NOT NULL ,
  `RUC` INT(13) NOT NULL ,
  PRIMARY KEY (`ID_PROVEEDOR`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `factura`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `factura` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `factura` (
  `ID_FACTU` INT(11) NOT NULL AUTO_INCREMENT ,
  `ID_PROVEEDOR` INT(11) NULL DEFAULT NULL ,
  `FECHA` DATE NOT NULL ,
  PRIMARY KEY (`ID_FACTU`) ,
  INDEX `FK_FACTURA_PROVEEDOR` (`ID_PROVEEDOR` ASC) ,
  CONSTRAINT `FK_FACTURA_PROVEEDOR`
    FOREIGN KEY (`ID_PROVEEDOR` )
    REFERENCES `proveedor` (`ID_PROVEEDOR` ))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `usuario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `usuario` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `usuario` (
  `ID_USUARIO` INT(11) NOT NULL AUTO_INCREMENT ,
  `NOMBRE_USUARIO` CHAR(25) NOT NULL ,
  `CONTRASENA_USUARIO` CHAR(10) NOT NULL ,
  `CEDULA_USUARIO` CHAR(13) NULL DEFAULT NULL ,
  PRIMARY KEY (`ID_USUARIO`) )
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = utf8;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `detalle`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `detalle` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `detalle` (
  `ID_DETALLE` INT(11) NOT NULL AUTO_INCREMENT ,
  `ID_USUARIO` INT(11) NULL DEFAULT NULL ,
  `ID_FACTU` INT(11) NULL DEFAULT NULL ,
  `ID_FACTURA` INT(11) NOT NULL ,
  PRIMARY KEY (`ID_DETALLE`) ,
  INDEX `FK_FACTURA_DETALLE` (`ID_FACTU` ASC) ,
  INDEX `FK_USUARIO_DETALLE` (`ID_USUARIO` ASC) ,
  CONSTRAINT `FK_FACTURA_DETALLE`
    FOREIGN KEY (`ID_FACTU` )
    REFERENCES `factura` (`ID_FACTU` ),
  CONSTRAINT `FK_USUARIO_DETALLE`
    FOREIGN KEY (`ID_USUARIO` )
    REFERENCES `usuario` (`ID_USUARIO` ))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `rubro`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `rubro` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `rubro` (
  `ID_RUBRO` INT(11) NOT NULL AUTO_INCREMENT ,
  `ID_DETALLE_RUBRO` INT(11) NULL DEFAULT NULL ,
  `VALOR_ACTUAL` DECIMAL(6,3) NULL DEFAULT NULL ,
  PRIMARY KEY (`ID_RUBRO`) ,
  INDEX `FK_RELATIONSHIP_5` (`ID_DETALLE_RUBRO` ASC) ,
  CONSTRAINT `FK_RELATIONSHIP_5`
    FOREIGN KEY (`ID_DETALLE_RUBRO` )
    REFERENCES `detalle_rubro` (`ID_DETALLE_RUBRO` ))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `detalle_rubro`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `detalle_rubro` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `detalle_rubro` (
  `ID_DETALLE_RUBRO` INT(11) NOT NULL AUTO_INCREMENT ,
  `ID_RUBRO` INT(11) NULL DEFAULT NULL ,
  `NOMBRE_RUBRO` CHAR(20) NOT NULL ,
  `VALOR_MAXIMO` DECIMAL(6,3) NOT NULL ,
  `TIPO` CHAR(20) NULL DEFAULT NULL ,
  PRIMARY KEY (`ID_DETALLE_RUBRO`) ,
  INDEX `FK_RELATIONSHIP_6` (`ID_RUBRO` ASC) ,
  CONSTRAINT `FK_RELATIONSHIP_6`
    FOREIGN KEY (`ID_RUBRO` )
    REFERENCES `rubro` (`ID_RUBRO` ))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `rubo_factura`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `rubo_factura` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `rubo_factura` (
  `ID_RUBRO` INT(11) NOT NULL AUTO_INCREMENT ,
  `ID_FACTU` INT(11) NOT NULL ,
  PRIMARY KEY (`ID_RUBRO`, `ID_FACTU`) ,
  INDEX `FK_RUBO_FACTURA2` (`ID_FACTU` ASC) ,
  CONSTRAINT `FK_RUBO_FACTURA`
    FOREIGN KEY (`ID_RUBRO` )
    REFERENCES `rubro` (`ID_RUBRO` ),
  CONSTRAINT `FK_RUBO_FACTURA2`
    FOREIGN KEY (`ID_FACTU` )
    REFERENCES `factura` (`ID_FACTU` ))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

SHOW WARNINGS;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
