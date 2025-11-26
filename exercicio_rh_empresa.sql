CREATE DATABASE rh_empresa;
USE rh_empresa;
CREATE TABLE colaboradores_empresa( 
	id BIGINT AUTO_INCREMENT, 
	nome VARCHAR(255) NOT NULL, 
    cargo VARCHAR(255) NOT NULL, 
    idade INT, 
    data_admissao DATE, 
    salario DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (id) 
    );
    
INSERT INTO colaboradores_empresa(nome, cargo, idade, data_admissao, salario) 
VALUES ("Mariana","Desenvolvedora full", 24, "2026-03-01", 12000.00);
INSERT INTO colaboradores_empresa(nome, cargo, idade, data_admissao, salario) 
VALUES ("Gabriel","Gerente", 23, "2020-01-01", 15000.00);
INSERT INTO colaboradores_empresa(nome, cargo, idade, data_admissao, salario) 
VALUES ("Leticia","Analista de dados", 24, "2024-08-01", 10000.00);
INSERT INTO colaboradores_empresa(nome, cargo, idade, data_admissao, salario) 
VALUES ("Marcia","Serviços gerais", 35, "2020-03-01", 1800.00);
INSERT INTO colaboradores_empresa(nome, cargo, idade, data_admissao, salario) 
VALUES ("Matheus","RH", 40, "2020-06-01", 11000.00);

SELECT * FROM colaboradores_empresa;

SELECT * FROM colaboradores_empresa WHERE salario > 2000.00;

UPDATE colaboradores_empresa
SET salario = 1800.00
WHERE id = 4;
    
SELECT * FROM colaboradores_empresa WHERE salario < 2000.00; 

ALTER TABLE colaboradores_empresa
MODIFY salario DECIMAL(10,2) NOT NULL;

SELECT * FROM colaboradores_empresa;