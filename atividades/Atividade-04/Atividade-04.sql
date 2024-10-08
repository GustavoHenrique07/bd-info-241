CREATE DATABASE SulCearense;

USE SulCearense;

-- Tabela de Estado
CREATE TABLE Estado (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100)
);

-- Inserindo o estado do Ceará
INSERT INTO Estado (nome) VALUES ('Ceará');

-- Tabela de MesoRegiao
CREATE TABLE MesoRegiao (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    estado_id INT,
    FOREIGN KEY (estado_id) REFERENCES Estado(id)
);

-- Inserindo a mesorregião Sul Cearense
INSERT INTO MesoRegiao (nome, estado_id) VALUES ('Sul Cearense', 1);

-- Tabela de MicroRegiao
CREATE TABLE MicroRegiao (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    mesoregiao_id INT,
    FOREIGN KEY (mesoregiao_id) REFERENCES MesoRegiao(id)
);

-- Inserindo as microrregiões da mesorregião Sul Cearense
INSERT INTO MicroRegiao (nome, mesoregiao_id) VALUES ('Caririaçu', 1);
INSERT INTO MicroRegiao (nome, mesoregiao_id) VALUES ('Cariri', 1);
INSERT INTO MicroRegiao (nome, mesoregiao_id) VALUES ('Barro', 1);
INSERT INTO MicroRegiao (nome, mesoregiao_id) VALUES ('Chapada do Araripe', 1);
INSERT INTO MicroRegiao (nome, mesoregiao_id) VALUES ('Brejo Santo', 1);

-- Tabela de Município
CREATE TABLE Municipio (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    latitude FLOAT,
    longitude FLOAT,
    microregiao_id INT,
    FOREIGN KEY (microregiao_id) REFERENCES MicroRegiao(id)
);

-- Inserindo os municípios da microrregião de Caririaçu
INSERT INTO Municipio (nome, latitude, longitude, microregiao_id) 
VALUES 
('Altaneira', -6.928323, -39.57252, 1),
('Caririaçu', -7.047801, -39.283327, 1),
('Farias Brito', -6.920674, -39.564316, 1),
('Granjeiro', -7.145130, -39.336294, 1);

-- Inserindo os municípios da microrregião de Cariri
INSERT INTO Municipio (nome, latitude, longitude, microregiao_id) 
VALUES 
('Barbalha', -7.358413, -39.331816, 2),
('Crato', -7.288420, -39.468317, 2),
('Jardim', -7.581972, -39.280938, 2),
('Juazeiro do Norte', -7.225012, -39.316460, 2),
('Missão Velha', -7.243793, -39.145684, 2),
('Nova Olinda', -7.082457, -39.649827, 2),
('Porteiras', -7.522557, -39.114820, 2),
('Santana do Cariri', -7.380635, -39.723907, 2);

-- Inserindo os municípios da microrregião de Barro
INSERT INTO Municipio (nome, latitude, longitude, microregiao_id) 
VALUES 
('Aurora', -7.027792, -39.455540, 3),
('Barro', -7.176239, -39.744682, 3),
('Mauriti', -7.390730, -38.783710, 3);

-- Inserindo os municípios da microrregião de Chapada do Araripe
INSERT INTO Municipio (nome, latitude, longitude, microregiao_id) 
VALUES 
('Araripe', -7.220945, -40.076147, 4),
('Assaré', -6.924219, -39.850783, 4),
('Campos Sales', -6.941119, -40.249556, 4),
('Potengi', -7.066435, -40.249556, 4);

-- Inserindo os municípios da microrregião de Brejo Santo
INSERT INTO Municipio (nome, latitude, longitude, microregiao_id) 
VALUES 
('Brejo Santo', -7.493684, -38.986306, 5),
('Abaiara', -7.3453, -39.0419, 5),
('Jati', -7.706011, -39.005734, 5),
('Milagres', -7.299983, -38.938225, 5),
('Penaforte', -7.810224, -39.070872, 5);

-- Tabela IFCampus
CREATE TABLE IFCampus (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    endereco VARCHAR(255),
    longitude FLOAT,
    latitude FLOAT,
    municipio_id INT,
    FOREIGN KEY (municipio_id) REFERENCES Municipio(id)
);

-- Inserindo um campus fictício em Juazeiro do Norte
INSERT INTO IFCampus (nome, endereco, longitude, latitude, municipio_id) 
VALUES ('IFCE Campus Juazeiro do Norte', 'Rua Tenente Raimundo Rocha, 515, CEP: 63040-020', -39.315860, -7.228963, 4);

-- Tabela EscolaCampo
CREATE TABLE EscolaCampo (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    endereco VARCHAR(255),
    longitude FLOAT,
    latitude FLOAT,
    municipio_id INT,
    FOREIGN KEY (municipio_id) REFERENCES Municipio(id)
);

-- Inserindo uma escola fictícia
INSERT INTO EscolaCampo (nome, endereco, longitude, latitude, municipio_id) 
VALUES ('Escola Rural Barbalha', 'Zona Rural, Barbalha, CEP: 63000-000', -39.331816, -7.358413, 2);

-- Tabela Assentamento
CREATE TABLE Assentamento (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    endereco VARCHAR(255),
    longitude FLOAT,
    latitude FLOAT,
    municipio_id INT,
    FOREIGN KEY (municipio_id) REFERENCES Municipio(id)
);

-- Inserindo assentamentos fictícios
INSERT INTO Assentamento (nome, endereco, longitude, latitude, municipio_id) 
VALUES 
('Assentamento Esperança', 'Área Rural, Aurora, CEP: 63000-001', -39.455540, -7.027792, 3),
('Assentamento Novo Sol', 'Área Rural, Brejo Santo, CEP: 63000-002', -38.986306, -7.493684, 5),
('Assentamento Boa Vista', 'Área Rural, Campos Sales, CEP: 63000-003', -40.249556, -6.941119, 4);
