/*Grupo 4 - Projeto Integrador
Nomes: Claudia Nogueira dos Anjos, Daniel Silveira, Raphaela Leite, Silvano Araujo, Vitor Eleuterio.*/

/* Criando o banco de dados */
CREATE DATABASE IF NOT EXISTS chocode;
/* Selecionando o banco de dados que vou trabalhar */
USE chocode;

/* Criando a tabela cliente */
CREATE TABLE cliente (
	id BIGINT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(150) NOT NULL,
    endereco VARCHAR(255) NOT NULL,
    longitude VARCHAR(50) NOT NULL,
    latitude VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8;
    
    /* Criando a tabela pedido */
CREATE TABLE pedido (
	id BIGINT NOT NULL AUTO_INCREMENT,
    cliente_id BIGINT NOT NULL,
    nome_restaurante VARCHAR(150) NOT NULL,
    produto VARCHAR(150) NOT NULL,
    status VARCHAR(150) NOT NULL,
    PRIMARY KEY (id),
    KEY id_cliente_idx (cliente_id),
	FOREIGN KEY (cliente_id) REFERENCES cliente (id)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8;
    
    /* Criando a tabela entregador */
CREATE TABLE entregador (
	id BIGINT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(150) NOT NULL,
    email VARCHAR(150) NOT NULL,
    senha VARCHAR(255) NOT NULL,
    url_image VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8;
    
      /* Criando a tabela geolocalizacao */
CREATE TABLE geolocalizacao (
	id BIGINT NOT NULL AUTO_INCREMENT,
    pedido_id BIGINT NOT NULL,
    entregador_id BIGINT NOT NULL,
    longitude VARCHAR(50) NOT NULL,
    latitude VARCHAR(50) NOT NULL,
    data DATE NOT NULL,
    PRIMARY KEY (id),
    KEY id_cliente_idx (cliente_id),
	FOREIGN KEY (cliente_id) REFERENCES cliente (id)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8;