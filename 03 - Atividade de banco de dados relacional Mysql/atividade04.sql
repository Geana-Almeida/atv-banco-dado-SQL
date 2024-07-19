create database db_cidade_dos_vegetais;

use db_cidade_dos_vegetais;

create table tb_categorias(
	id bigint auto_increment,
    categoria varchar(255) not null,
    descricao varchar(255) not null,
    primary key (id)
);

INSERT INTO tb_categorias (categoria, descricao) VALUES
('Frutas', 'Diversas frutas frescas como maçãs, bananas e laranjas.'),
('Vegetais', 'Variedade de vegetais frescos como cenouras e beterrabas.'),
('Legumes', 'Legumes como abóbora, pepino e pimentão.'),
('Verduras', 'Folhas verdes como alface, espinafre e rúcula.'),
('Tubérculos', 'Produtos como batata, mandioca e cenoura.'),
('Ervas', 'Ervas frescas como manjericão, coentro e salsinha.'),
('Cesta Basica', 'Uma cesta basica com todos os produtos que temos na loja');

select * from tb_categorias;

create table tb_produtos(
	id bigint auto_increment,
    nome varchar(255) not null,
    valor decimal(5,2) not null,
    validade_produto date not null,
    promocao boolean not null,
    categoriasid bigint,
    primary key (id),
    constraint fk_produtos_categorias foreign key (categoriasid) references tb_categorias(id)
);

INSERT INTO tb_produtos (nome, valor, validade_produto, promocao, categoriasid) VALUES
('Maçã Fuji', 3.50, '2024-08-15', FALSE, 1),
('Banana Prata', 2.20, '2024-07-30', TRUE, 1),
('Cenoura Orgânica', 4.00, '2024-08-10', FALSE, 2),
('Abóbora Moranga', 5.00, '2024-08-20', TRUE, 3),
('Alface Crespa', 1.80, '2024-07-25', FALSE, 4),
('Batata Doce', 3.00, '2024-08-05', TRUE, 5),
('Manjericão Fresco', 2.50, '2024-07-28', FALSE, 6),
('Pimentão Vermelho', 2.70, '2024-08-12', TRUE, 3),
("Cesta Basica Hortifruti", 60.00, '2024-08-05', TRUE, 7);

select * from tb_produtos where valor > 50;

select * from tb_produtos where valor between 50 and 150;

select * from tb_produtos where nome like "%C%";

select * from tb_produtos
inner join tb_categorias on tb_categorias.id = tb_produtos.categoriasid;

select * from tb_produtos
inner join tb_categorias on tb_categorias.id = tb_produtos.categoriasid where categoriasid = 3;