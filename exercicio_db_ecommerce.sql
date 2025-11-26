CREATE DATABASE db_ecommerce;
USE db_ecommerce;
CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
    categoria VARCHAR(100) NOT NULL,
	quantidade INT,
    data_cadastro DATE,
	preco DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos(nome, categoria, quantidade, data_cadastro, preco)
VALUES ("iPhone 17 Pro Max 256GB", "Eletrônicos", 10, "2025-01-10", 12499.00);
INSERT INTO tb_produtos(nome, categoria, quantidade, data_cadastro, preco)
VALUES ("Notebook Samsung Galaxy Book4 Ultra", "Eletrônicos", 5, "2025-01-12", 8999.00);
INSERT INTO tb_produtos(nome, categoria, quantidade, data_cadastro, preco)
VALUES ("Camiseta Stranger Things Oficial - M", "Vestuário", 40, "2025-01-15", 159.90);
INSERT INTO tb_produtos(nome, categoria, quantidade, data_cadastro, preco)
VALUES ("Maquiagem KIKO Milano Hydra LipGloss", "Beleza", 35, "2025-01-20", 79.90);
INSERT INTO tb_produtos(nome, categoria, quantidade, data_cadastro, preco)
VALUES ("Monitor Samsung Odyssey Neo G9", "Eletrônicos", 6, "2025-01-17", 13999.00);
INSERT INTO tb_produtos(nome, categoria, quantidade, data_cadastro, preco)
VALUES ("Perfume Miss Dior Eau de Parfum 100ml", "Beleza", 20, "2025-01-18", 899.00);
INSERT INTO tb_produtos(nome, categoria, quantidade, data_cadastro, preco)
VALUES ("Bolsa Santa Lolla Couro Preto", "Acessórios", 18, "2025-01-19", 599.90);
INSERT INTO tb_produtos(nome, categoria, quantidade, data_cadastro, preco)
VALUES ("Pulseira Swarovski Crystal Tennis Deluxe", "Acessórios", 12, "2025-01-20", 1250.00);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 500.00;

SELECT * FROM tb_produtos WHERE preco < 500.00;

UPDATE tb_produtos
SET nome = "Camiseta Stranger Things Oficial - P"
WHERE id = 3;
