CREATE DATABASE SistemaBancario;
USE SistemaBancario;

-- Tabela Banco
CREATE TABLE Banco (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(150),
    telefone VARCHAR(15)
);

-- Tabela Agencia
CREATE TABLE Agencia (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codigo VARCHAR(20) NOT NULL,
    endereco VARCHAR(150),
    telefone VARCHAR(15),
    banco_id INT,
    FOREIGN KEY (banco_id) REFERENCES Banco(id)
);

-- Tabela Conta
CREATE TABLE Conta (
    id INT AUTO_INCREMENT PRIMARY KEY,
    numero_conta VARCHAR(20) NOT NULL,
    saldo DECIMAL(10, 2) DEFAULT 0.0,
    tipo VARCHAR(20), 
    agencia_id INT,
    FOREIGN KEY (agencia_id) REFERENCES Agencia(id)
);

-- Tabela Cliente
CREATE TABLE Cliente (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(11) UNIQUE,
    endereco VARCHAR(150),
    telefone VARCHAR(15),
    email VARCHAR(100)
);

