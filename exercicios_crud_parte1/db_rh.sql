CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    cargo VARCHAR(255) NOT NULL,
    salario DECIMAL(8,2) NOT NULL,
    data_inicio DATE NOT NULL,
    PRIMARY KEY (id)
);

-- Inserindo dados

INSERT INTO tb_colaboradores(nome, cargo, salario, data_inicio) 
VALUES ("Jose","Gerente", 8000.00 , "2023-12-15");
INSERT INTO tb_colaboradores(nome, cargo, salario, data_inicio) 
VALUES ("Carla","Assistente administrativo", 3000.00 , "2024-01-20");
INSERT INTO tb_colaboradores(nome, cargo, salario, data_inicio) 
VALUES ("Lucas","Tecnico de TI", 5000.00 , "2023-08-20");
INSERT INTO tb_colaboradores(nome, cargo, salario, data_inicio) 
VALUES ("Lucia","Marketing", 4000.00 , "2023-11-10");
INSERT INTO tb_colaboradores(nome, cargo, salario, data_inicio) 
VALUES ("Paulo","Entregador", 2000.00 , "2023-04-12");
INSERT INTO tb_colaboradores(nome, cargo, salario, data_inicio) 
VALUES ("Fabio","Estagiario", 1500.00 , "2023-08-12");


-- SELECT que retorne todos os colaboradores com o salário maior do que 2000.

SELECT * FROM tb_colaboradores WHERE salario > 2000;


-- SELECT que retorne todes os colaboradores com o salário menor do que 2000.

SELECT * FROM Tb_colaboradores WHERE Salario < 2000;

-- ATUALIZAR REGISTRO

UPDATE Tb_colaboradores SET Salario = 1800.00 WHERE Id = 6;