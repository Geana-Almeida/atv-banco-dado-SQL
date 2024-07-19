create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categorias(
	id bigint auto_increment,
    nome varchar(255) not null,
    descricao varchar(255) not null,
    primary key (id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
('Margherita', 'Pizza clássica com molho de tomate, mozzarella e manjericão fresco.'),
('Pepperoni', 'Pizza com uma generosa camada de pepperoni sobre o queijo derretido.'),
('Vegetariana', 'Pizza com uma variedade de vegetais frescos como pimentões, cogumelos e azeitonas.'),
('Quatro Queijos', 'Pizza com uma mistura de quatro tipos de queijo: mozzarella, parmesão, gorgonzola e provolone.'),
('Frango com Catupiry', 'Pizza com peito de frango desfiado e catupiry, uma combinação rica e cremosa.');


select * from tb_categorias;

create table tb_pizzas(
	id bigint auto_increment,
    preco decimal(4,2) not null,
    tamanho varchar(255) not null,
    img_url varchar(255),
    tempo_preparo varchar(255) not null,
    disponibilidade boolean,
    categoriasid bigint,
    primary key (id),
    CONSTRAINT fk_pizzas_categorias FOREIGN KEY (categoriasid) REFERENCES tb_categorias(id)
);


INSERT INTO tb_pizzas ( preco, tamanho, img_url, tempo_preparo, disponibilidade, categoriasid) VALUES
( 35.90, 'Média', 'http://example.com/imagem_margherita.jpg', 15, TRUE, 2),
( 40.90, 'Grande', 'http://example.com/imagem_pepperoni.jpg', 18, TRUE, 1),
( 68.90, 'Média', 'http://example.com/imagem_vegetariana.jpg', 20, TRUE, 3),
( 45.90, 'Grande', 'http://example.com/imagem_quatro_queijos.jpg', 22, TRUE, 4),
( 42.90, 'Média', 'http://example.com/imagem_frango_catupiry.jpg', 20, TRUE, 5),
( 60.90, 'Tamanho Familia', 'http://example.com/imagem_vegetariana.jpg', 20, TRUE, 3),
( 70.90, 'Tamanho Familia', 'http://example.com/imagem_quatro_queijos.jpg', 22, TRUE, 4),
( 85.90, 'Tamanho Familia', 'http://example.com/imagem_frango_catupiry.jpg', 20, TRUE, 5);


select * from tb_pizzas where preco > 45;

select * from tb_pizzas where preco between 50 and 100;

select * from tb_categorias where nome like "%m%";

select * from tb_pizzas
inner join tb_categorias on tb_categorias.id = tb_pizzas.categoriasid; 

select * from tb_pizzas
inner join tb_categorias on tb_categorias.id = tb_pizzas.categoriasid where nome = "Vegetariana"; 