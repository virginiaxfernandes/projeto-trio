SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8;
USE `mydb`;

-- Funcionario
DROP TABLE IF EXISTS `Funcionario`;
CREATE TABLE `Funcionario` (
  `id_funcionario` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NOT NULL,
  `cargo` VARCHAR(50) NOT NULL,
  `contato` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`id_funcionario`),
  UNIQUE (`contato`)
) ENGINE = InnoDB;

-- Cliente
DROP TABLE IF EXISTS `Cliente`;
CREATE TABLE `Cliente` (
  `id_cliente` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NOT NULL,
  `endereco` VARCHAR(200) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `telefone` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE = InnoDB;

-- Fornecedor
DROP TABLE IF EXISTS `Fornecedor`;
CREATE TABLE `Fornecedor` (
  `id_fornecedor` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100),
  `endereco` VARCHAR(100),
  `email` VARCHAR(100),
  PRIMARY KEY (`id_fornecedor`),
  UNIQUE (`email`)
) ENGINE = InnoDB;

-- Categoria
DROP TABLE IF EXISTS `Categoria`;
CREATE TABLE `Categoria` (
  `id_categoria` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE = InnoDB;

-- Produto
DROP TABLE IF EXISTS `Produto`;
CREATE TABLE `Produto` (
  `id_produto` INT NOT NULL AUTO_INCREMENT,
  `id_categoria` INT NOT NULL,
  `id_fornecedor` INT NOT NULL,
  `nome` VARCHAR(100) NOT NULL,
  `descricao` VARCHAR(200),
  `preco` DECIMAL(10,2) NOT NULL,
  `tamanho` VARCHAR(45),
  `cor` VARCHAR(45),
  `marca` VARCHAR(45),
  PRIMARY KEY (`id_produto`),
  FOREIGN KEY (`id_categoria`) REFERENCES `Categoria`(`id_categoria`),
  FOREIGN KEY (`id_fornecedor`) REFERENCES `Fornecedor`(`id_fornecedor`)
) ENGINE = InnoDB;

-- Venda
DROP TABLE IF EXISTS `Venda`;
CREATE TABLE `Venda` (
  `id_venda` INT NOT NULL AUTO_INCREMENT,
  `id_produto` INT NOT NULL,
  `data_venda` DATE NOT NULL,
  `desconto` DECIMAL(5,2),
  `forma_pagamento` VARCHAR(45) NOT NULL,
  `status_entrega` VARCHAR(45) NOT NULL,
  `id_funcionario` INT UNSIGNED NOT NULL,
  `id_cliente` INT NOT NULL,
  PRIMARY KEY (`id_venda`),
  FOREIGN KEY (`id_funcionario`) REFERENCES `Funcionario`(`id_funcionario`),
  FOREIGN KEY (`id_cliente`) REFERENCES `Cliente`(`id_cliente`),
  FOREIGN KEY (`id_produto`) REFERENCES `Produto`(`id_produto`)
) ENGINE = InnoDB;

-- Promocao
DROP TABLE IF EXISTS `Promocao`;
CREATE TABLE `Promocao` (
  `id_promocao` INT NOT NULL AUTO_INCREMENT,
  `desconto` DECIMAL(5,2) NOT NULL,
  `data_inicio` DATE NOT NULL,
  `data_final` DATE NOT NULL,
  `id_produto` INT NOT NULL,
  PRIMARY KEY (`id_promocao`),
  FOREIGN KEY (`id_produto`) REFERENCES `Produto`(`id_produto`)
) ENGINE = InnoDB;

-- Estoque
DROP TABLE IF EXISTS `Estoque`;
CREATE TABLE `Estoque` (
  `id_produto` INT NOT NULL,
  `quantidade` INT NOT NULL,
  `data_entrada` DATE NOT NULL,
  `data_saida` DATE,
  PRIMARY KEY (`id_produto`),
  FOREIGN KEY (`id_produto`) REFERENCES `Produto`(`id_produto`)
) ENGINE = InnoDB;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;