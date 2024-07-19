CREATE DATABASE db_e_commerce;

USE db_e_commerce;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
    produto VARCHAR(255) NOT NULL,
    quantidade VARCHAR(255) NOT NULL,
    preco DECIMAL(6,2) NOT NULL,
    categoria VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

-- Inserindo dados

INSERT INTO tb_produtos(produto, quantidade, preco, categoria) 
VALUES ("Geladeira", 20, 2500.00 , "Eletrodomestico");
INSERT INTO tb_produtos(produto, quantidade, preco, categoria) 
VALUES ("Fogao", 15, 1800.00 , "Eletrodomestico");
INSERT INTO tb_produtos(produto, quantidade, preco, categoria) 
VALUES ("Xbox One", 15, 4500.00 , "Eletronico");
INSERT INTO tb_produtos(produto, quantidade, preco, categoria) 
VALUES ("Cadeira Gamer", 10, 1000.00 , "Movel");
INSERT INTO tb_produtos(produto, quantidade, preco, categoria) 
VALUES ("Guarda-Roupa", 8, 1500.00 , "movel");



-- SELECT 

SELECT * FROM Tb_produtos WHERE preco > 500;


-- SELECT 

SELECT * FROM Tb_produtos WHERE preco < 500;

-- ATUALIZAR REGISTRO

UPDATE Tb_produtos SET preco = 450.00 WHERE Id = 4;