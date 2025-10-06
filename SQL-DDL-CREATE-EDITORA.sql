-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
SHOW WARNINGS;
-- -----------------------------------------------------
-- Schema editora
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `editora` ;

-- -----------------------------------------------------
-- Schema editora
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `editora` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
SHOW WARNINGS;
USE `editora` ;

-- -----------------------------------------------------
-- Table `area_conhecimento`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `area_conhecimento` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `area_conhecimento` (
  `cod_area` INT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(120) NOT NULL,
  PRIMARY KEY (`cod_area`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `autor`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `autor` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `autor` (
  `id_autor` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(150) NOT NULL,
  `nome_social` VARCHAR(150) NULL DEFAULT NULL,
  `pseudonimo` VARCHAR(150) NULL DEFAULT NULL,
  `data_nascimento` DATE NOT NULL,
  `nacionalidade` VARCHAR(60) NOT NULL,
  `cpf` VARCHAR(14) NOT NULL,
  PRIMARY KEY (`id_autor`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

SHOW WARNINGS;
CREATE INDEX `idx_autor_nome` ON `autor` (`nome` ASC) VISIBLE;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `cliente`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cliente` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `cliente` (
  `cpf` VARCHAR(14) NOT NULL,
  `nome` VARCHAR(150) NOT NULL,
  `nome_social` VARCHAR(150) NULL DEFAULT NULL,
  `email` VARCHAR(120) NOT NULL,
  `status` ENUM('ativo', 'bloqueado') NOT NULL DEFAULT 'ativo',
  `data_nasc` DATE NOT NULL,
  `rua` VARCHAR(150) NOT NULL,
  `bairro` VARCHAR(80) NOT NULL,
  `cep` VARCHAR(12) NOT NULL,
  `cidade` VARCHAR(80) NOT NULL,
  `uf` CHAR(2) NOT NULL,
  `complemento` VARCHAR(80) NOT NULL,
  PRIMARY KEY (`cpf`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `funcionario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `funcionario` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `funcionario` (
  `Id_CPF` VARCHAR(14) NOT NULL,
  `nome` VARCHAR(150) NOT NULL,
  `cargo` VARCHAR(80) NOT NULL,
  `telefone1` VARCHAR(20) NOT NULL,
  `telefone2` VARCHAR(20) NOT NULL,
  `email` VARCHAR(120) NOT NULL,
  `rua` VARCHAR(150) NOT NULL,
  `bairro` VARCHAR(80) NOT NULL,
  `cep` VARCHAR(12) NOT NULL,
  `cidade` VARCHAR(80) NOT NULL,
  `uf` CHAR(2) NOT NULL,
  `complemento` VARCHAR(80) NOT NULL,
  `id_depart` INT NULL,
  PRIMARY KEY (`Id_CPF`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `departamento`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `departamento` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `departamento` (
  `id_depart` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NOT NULL,
  `descricao` VARCHAR(200) NOT NULL,
  `supervisor_cpf` VARCHAR(14) NULL DEFAULT NULL,
  PRIMARY KEY (`id_depart`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `livro`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `livro` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `livro` (
  `isbn` VARCHAR(20) NOT NULL,
  `titulo` VARCHAR(200) NOT NULL,
  `data_publi` DATE NOT NULL,
  `genero` VARCHAR(60) NOT NULL,
  `num_pag` INT NOT NULL,
  `descricao` TEXT NULL DEFAULT NULL,
  `edicao` VARCHAR(30) NOT NULL,
  `idioma` VARCHAR(30) NOT NULL,
  `formato` VARCHAR(30) NOT NULL,
  `ativo` TINYINT(1) NULL DEFAULT '1',
  PRIMARY KEY (`isbn`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

SHOW WARNINGS;
CREATE INDEX `idx_livro_titulo` ON `livro` (`titulo` ASC) VISIBLE;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `exemplar`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `exemplar` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `exemplar` (
  `id_exemplar` INT NOT NULL,
  `num_serie` VARCHAR(50) NOT NULL,
  `estado` ENUM('disponivel', 'reservado', 'expedido', 'danificado') NOT NULL,
  `localizacao` VARCHAR(120) NOT NULL,
  `data_entrada` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `livro_isbn` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id_exemplar`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `pedido`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `pedido` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `pedido` (
  `id_pedido` INT NOT NULL AUTO_INCREMENT,
  `cpf_cliente` VARCHAR(14) NOT NULL,
  `cpf_funcionario` VARCHAR(14) NOT NULL,
  `data_pedi` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status_pedi` ENUM('aberto', 'faturado', 'entregue', 'cancelado') NOT NULL,
  `canal_venda` ENUM('loja', 'telefone', 'representante') NOT NULL,
  `observacoes` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id_pedido`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `item_pedido`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `item_pedido` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `item_pedido` (
  `id_pedido` INT NOT NULL,
  `isbn` VARCHAR(20) NOT NULL,
  `quantidade` INT NOT NULL,
  `preco_unitario` DECIMAL(12,2) NOT NULL,
  `desconto_percentual` DECIMAL(5,2) NULL DEFAULT '0.00',
  PRIMARY KEY (`id_pedido`, `isbn`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `livro_area`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `livro_area` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `livro_area` (
  `isbn` VARCHAR(20) NOT NULL,
  `cod_area` INT NOT NULL,
  PRIMARY KEY (`isbn`, `cod_area`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `livro_autor`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `livro_autor` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `livro_autor` (
  `isbn` VARCHAR(20) NOT NULL,
  `id_autor` INT NOT NULL,
  `papel` ENUM('autor', 'organizador', 'tradutor', 'ilustrador') NOT NULL,
  `ordem_autoria` INT NOT NULL,
  PRIMARY KEY (`isbn`, `id_autor`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

SHOW WARNINGS;
CREATE UNIQUE INDEX `uq_livro_ordem` ON `livro_autor` (`isbn` ASC, `ordem_autoria` ASC) VISIBLE;

SHOW WARNINGS;
CREATE UNIQUE INDEX `isbn_UNIQUE` ON `livro_autor` (`isbn` ASC) VISIBLE;

SHOW WARNINGS;
CREATE UNIQUE INDEX `id_autor_UNIQUE` ON `livro_autor` (`id_autor` ASC) VISIBLE;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `palavras_chave`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `palavras_chave` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `palavras_chave` (
  `cod_palavra` INT NOT NULL AUTO_INCREMENT,
  `idioma` VARCHAR(30) NOT NULL,
  `descricao` VARCHAR(120) NOT NULL,
  PRIMARY KEY (`cod_palavra`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `livro_palavra`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `livro_palavra` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `livro_palavra` (
  `isbn` VARCHAR(20) NOT NULL,
  `cod_palavra` INT NOT NULL,
  PRIMARY KEY (`isbn`, `cod_palavra`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

SHOW WARNINGS;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
