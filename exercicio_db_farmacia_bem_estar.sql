-- 1) Criar banco de dados
CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

-- 2) Criar tabela tb_categorias
CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT,
    tipo VARCHAR(50) NOT NULL,
	descricao VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
    );
    
-- 4) Inserir 5 registros na tabela tb_categorias
INSERT INTO tb_categorias (tipo, descricao) VALUES
("Medicamentos", "Produtos farmacêuticos para tratamento de doenças"),
("Suplementos", "Vitaminas, minerais e suplementos nutricionais"),
("Higiene", "Produtos de higiene pessoal e limpeza"),
("Skincare", "Cosméticos e produtos para cuidados com a pele"),
("Kids", "Produtos para bebês e crianças");

SELECT*FROM tb_categorias;

-- 3) Criar tabela tb_produtos
CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255),
    preco DECIMAL(6,2) NOT NULL,
    quantidade INT,
    categoria_id BIGINT,
    
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

-- 5) Inserir 8 registros na tabela tb_produtos
INSERT INTO tb_produtos (nome, descricao, preco, quantidade, categoria_id) VALUES
("Dorflex", "Analgésico para dores musculares", 12.50, 50, 1),
("Lavitan Carmed Cabelos e Unhas", "Suplemento vitamínico para fortalecimento de cabelo e unhas", 35.00, 30, 2),
("Colônia Johnson's Baby", "Colônia suave para bebês", 25.00, 40, 5),
("Sérum Facial Principia Mix-01", "Sérum facial nutritivo para a pele", 45.00, 20, 4),
("Suplemento Whey", "Proteína para ganho muscular", 120.00, 10, 2),
("Fralda Infantil", "Fralda descartável tamanho M", 45.00, 25, 5),
("Protetor Solar Sallve FPS 60", "Protetor solar facial e corporal", 55.00, 15, 4),
("Carmed BFF Beijinho FPS 30 Hidratante Labial", "Protetor labial hidratante com FPS", 28.00, 30, 4);

SELECT*FROM tb_produtos;

-- 6) SELECT produtos com valor maior que R$ 50,00
SELECT * FROM tb_produtos WHERE preco > 50.00;

-- 7) SELECT produtos com valor entre 5,00 e 60,00
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

-- 8) SELECT produtos cujo nome contenha a letra 'C'
SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

-- 9) INNER JOIN produtos com categorias
SELECT p.id, p.nome, p.descricao, p.preco, p.quantidade, c.tipo, c.descricao
FROM tb_produtos p INNER JOIN tb_categorias c
ON p.categoria_id = c.id;

-- 10) INNER JOIN filtrando produtos de uma categoria específica (ex: Beleza)
SELECT p.id, p.nome, p.descricao, p.preco, p.quantidade, c.tipo, c.descricao
FROM tb_produtos p INNER JOIN tb_categorias c
ON p.categoria_id = c.id WHERE c.tipo = "Skincare";
