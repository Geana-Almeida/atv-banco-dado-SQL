CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudante(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    ano_de_ensino VARCHAR(255) NOT NULL,
    nota1 DECIMAL(4,2) NOT NULL,
    nota2 DECIMAL(4,2) NOT NULL,
    PRIMARY KEY (id)
);

-- Inserindo dados

INSERT INTO tb_estudante(nome, ano_de_ensino, nota1, nota2) 
VALUES ("Jose","8 Serie", 8.00 , 7.00);
INSERT INTO tb_estudante(nome, ano_de_ensino, nota1, nota2) 
VALUES ("Carlos","7 Serie", 9.00 , 8.00);
INSERT INTO tb_estudante(nome, ano_de_ensino, nota1, nota2) 
VALUES ("Julia","9 Serie", 9.00 , 9.00);
INSERT INTO tb_estudante(nome, ano_de_ensino, nota1, nota2) 
VALUES ("Carol","1 ano do ensino medio", 10.00 , 9.00);
INSERT INTO tb_estudante(nome, ano_de_ensino, nota1, nota2) 
VALUES ("Joao","8 Serie", 9.00 , 9.00);
INSERT INTO tb_estudante(nome, ano_de_ensino, nota1, nota2) 
VALUES ("Lucia","8 Serie", 10.00 , 10.00);
INSERT INTO tb_estudante(nome, ano_de_ensino, nota1, nota2) 
VALUES ("Lucio","8 Serie", 10.00 , 5.00);
INSERT INTO tb_estudante(nome, ano_de_ensino, nota1, nota2) 
VALUES ("Amanda","8 Serie", 5.00 , 5.00);


-- SELECT que retorne todos os colaboradores com o salário maior do que 2000.

SELECT * from tb_estudante where nota1 > 7 AND nota2 > 7; 


-- SELECT que retorne todes os colaboradores com o salário menor do que 2000.

SELECT * from tb_estudante where nota1 < 7 AND nota2 < 7; 

-- ATUALIZAR REGISTRO

UPDATE tb_estudante SET nota1 = 9.00 WHERE Id = 6;