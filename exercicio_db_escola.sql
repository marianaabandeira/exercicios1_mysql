CREATE DATABASE db_escola;
USE db_escola;
CREATE TABLE estudantes(
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    ano INT,
    nota_final DECIMAL(4,2),
    frequencia DECIMAL(5,2),
    PRIMARY KEY (id)
);
INSERT INTO estudantes(nome, ano, nota_final, frequencia)
VALUES ("Mariana Bandeira", 2, 9.50, 95.00);
INSERT INTO estudantes(nome, ano, nota_final, frequencia)
VALUES ("Gabriel Paoleschi", 2, 7.75, 88.00);
INSERT INTO estudantes(nome, ano, nota_final, frequencia)
VALUES ("Leticia Paoleschi", 2, 9.00, 92.00);
INSERT INTO estudantes(nome, ano, nota_final, frequencia)
VALUES ("Brendha Vitoria", 1, 7.50, 80.00);
INSERT INTO estudantes(nome, ano, nota_final, frequencia)
VALUES ("Matheus Casal", 1, 6.80, 97.00);
INSERT INTO estudantes(nome, ano, nota_final, frequencia)
VALUES ("Juliana Santos", 3, 8.20, 85.00);
INSERT INTO estudantes(nome, ano, nota_final, frequencia)
VALUES ("Paula Silva", 3, 5.50, 99.00);
INSERT INTO estudantes(nome, ano, nota_final, frequencia)
VALUES ("Cecilia Santos", 1, 5.90, 75.00);

SELECT * FROM estudantes;

SELECT * FROM estudantes WHERE nota_final > 7.00;

SELECT * FROM estudantes WHERE nota_final < 7.00;

UPDATE estudantes
SET nota_final = 6.00
WHERE id = 7;
