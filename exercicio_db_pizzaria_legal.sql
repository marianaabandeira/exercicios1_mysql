-- 1) Criar banco de dados
CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

-- 2) Criar tabela tb_categorias
CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT,
    tipo VARCHAR(50) NOT NULL,
	descricao VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

-- 4) Inserir 5 registros na tabela tb_categorias
INSERT INTO tb_categorias (tipo, descricao)
VALUES ("Tradicional", "Pizzas clássicas com molho de tomate");
INSERT INTO tb_categorias (tipo, descricao)
VALUES ("Vegetariana", "Sem carnes, apenas vegetais e queijos");
INSERT INTO tb_categorias (tipo, descricao)
VALUES ("Nordestina", "Pizzas com ingredientes e sabores típicos do Nordeste");
INSERT INTO tb_categorias (tipo, descricao)
VALUES ("Premium", "Combinações exclusivas e ingredientes especiais");
INSERT INTO tb_categorias (tipo, descricao)
VALUES ("Doce", "Pizzas doces, com chocolates e frutas");

SELECT*FROM tb_categorias;

-- 3) Criar tabela tb_pizzas
CREATE TABLE tb_pizzas(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
    ingredientes VARCHAR (255),
    preco DECIMAL(6,2) NOT NULL, 
    tamanho VARCHAR (20),
    categoria_id BIGINT,
    
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
    );
 
 -- 5) Inserir 8 registros na tabela tb_pizzas
 INSERT INTO tb_pizzas (nome, ingredientes, preco, tamanho, categoria_id) VALUES
("Mussarela", "Tomates e mussarela", 54.90, "Grande", 1),
("Calabresa", "Calabresa, cebola e mussarela", 62.90, "Média", 1),
("Frango Premium", "Frango desfiado refogado, catupiry e mussarela", 62.90, "Grande", 4),
("4 Queijos", "Provolone, gorgonzola, catupiry e mussarela", 68.90, "Grande", 2),
("Nordestina Catupiry", "Catupiry, carne de sol e mussarela", 71.90, "Grande", 3),
("Banana com Chocolate", "Banana, chocolate, granulado e farelos de castanha de caju", 39.90, "Média", 5),
("Brigadeiro", "Mussarela, chocolate brigadeiro e granulado de chocolate", 56.90, "Média", 5),
("Camarão com catupiry", "Camarão, catupiry e mussarela", 60.00, "Grande", 4);

SELECT*FROM tb_pizzas;

-- 6) SELECT pizzas com valor maior que R$ 45,00
SELECT * FROM tb_pizzas WHERE preco > 45.00;

-- 7) SELECT pizzas com valor entre 50 e 100
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

-- 8) SELECT pizzas cujo nome contenha a letra 'M'
SELECT * FROM tb_pizzas WHERE nome LIKE "%M%";

-- 9) SELECT com INNER JOIN (trazer nome da categoria)
SELECT p.id, p.nome, p.ingredientes, p.preco, p.tamanho, c.tipo, c.descricao
FROM tb_pizzas p INNER JOIN tb_categorias c
ON p.categoria_id = c.id;

-- 10) SELECT com INNER JOIN para categoria específica (Ex: Doce)
SELECT p.id, p.nome, p.ingredientes, p.preco, p.tamanho, c.tipo, c.descricao
FROM tb_pizzas p INNER JOIN tb_categorias c
ON p.categoria_id = c.id WHERE c.tipo = "Doce";
