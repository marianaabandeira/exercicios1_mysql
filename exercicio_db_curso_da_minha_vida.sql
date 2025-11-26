-- 1) Criar banco de dados
CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;

-- 2) Criar tabela tb_categorias
CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT,
	tipo VARCHAR(100) NOT NULL,
	descricao VARCHAR(100) NOT NULL,
	PRIMARY KEY (id)
);

-- 4) Inserir 5 registros na tabela tb_categorias
INSERT INTO tb_categorias (tipo, descricao) VALUES
("JavaScript", "Cursos relacionados à linguagem de programação JavaScript"),
("Java", "Cursos relacionados à linguagem de programação Java"),
("Banco de Dados", "Cursos de modelagem, SQL e administração de bancos de dados"),
("Design", "Cursos de design gráfico, UX/UI e criatividade"),
("Data Science", "Cursos de análise de dados, estatística e Machine Learning");

SELECT*FROM tb_categorias;

-- 3) Criar tabela tb_cursos
CREATE TABLE tb_cursos(
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255),
    preco DECIMAL(8,2) NOT NULL,
    duracao INT, -- (duração em horas)
    categoria_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

-- 5) Inserir 8 registros na tabela tb_cursos
INSERT INTO tb_cursos (nome, descricao, preco, duracao, categoria_id) VALUES
("JavaScript Básico", "Curso introdutório de JavaScript", 390.00, 40, 1),
("Java Avançado", "Curso avançado de Java com projetos", 580.00, 80, 2),
("SQL para Iniciantes", "Aprenda SQL do zero", 600.00, 50, 3),
("Administração de Banco de Dados", "Gerenciamento de bancos de dados MySQL e PostgreSQL", 670.00, 70, 3),
("Design Gráfico Básico", "Introdução a design gráfico com ferramentas digitais", 300.00, 35, 4),
("UX/UI Avançado", "Curso avançado de UX/UI Design", 560.00, 60, 4),
("Python para Data Science", "Curso de Python focado em análise de dados", 620.00, 70, 5),
("Machine Learning Avançado", "Aprenda Machine Learning do zero ao avançado", 8000.00, 80, 5);

SELECT*FROM tb_cursos;

-- 6) SELECT cursos com valor maior que R$ 500,00
SELECT * FROM tb_cursos WHERE preco > 500.00;

-- 7) SELECT cursos com valor entre R$ 600,00 e R$ 1000,00
SELECT * FROM tb_cursos WHERE preco BETWEEN 600.00 AND 1000.00;

-- 8) SELECT cursos que possuem a letra J no nome
SELECT * FROM tb_cursos WHERE nome LIKE "%J%";

-- 9) INNER JOIN cursos com categorias
SELECT c.id, c.nome, c.descricao, c.preco, c.duracao, cat.tipo, cat.descricao
FROM tb_cursos c INNER JOIN tb_categorias cat
ON c.categoria_id = cat.id;

-- 9) INNER JOIN filtrando cursos de uma categoria específica (ex: Java)
SELECT c.id, c.nome, c.descricao, c.preco, c.duracao, cat.tipo, cat.descricao
FROM tb_cursos c INNER JOIN tb_categorias cat
ON c.categoria_id = cat.id WHERE cat.tipo = "Java";




