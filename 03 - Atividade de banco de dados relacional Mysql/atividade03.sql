create database db_farmacia_bem_estar;

use db_farmacia_bem_estar;

create table tb_categorias(
	id bigint auto_increment,
    generico boolean not null,
    descricao varchar(255) not null,
    primary key (id)
);

INSERT INTO tb_categorias (generico, descricao) VALUES
(TRUE, 'Medicamentos genéricos para alívio de dor e febre'),
(FALSE, 'Medicamentos de marca para tratamento de hipertensão'),
(TRUE, 'Medicamentos genéricos para tratamento de diabetes'),
(FALSE, 'Medicamentos de marca para controle de colesterol'),
(TRUE, 'Medicamentos genéricos para cuidados com a digestão'),
(FALSE, 'Medicamentos de marca para tratamento de infecções respiratórias');

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
('Paracetamol 500mg - Genérico', 12.99, '2025-12-31', TRUE, 1),  
('Losartana 50mg - Marca X', 45.00, '2024-06-30', FALSE, 2),     
('Metformina 850mg - Genérico', 25.50, '2025-09-15', TRUE, 3),   
('Atorvastatina 20mg - Marca Y', 55.00, '2024-03-31', TRUE, 4),   
('Omeprazol 20mg - Genérico', 19.75, '2025-11-30', FALSE, 5),   
('Azitromicina 500mg - Marca Z', 35.00, '2024-10-15', TRUE, 6),
('Dipirona 1g - Genérico', 14.30, '2025-02-28', TRUE, 1),  
('Clonazepam 2mg - Marca W', 62.00, '2024-12-01', FALSE, 6);   

select * from tb_produtos where valor > 50;

select * from tb_produtos where valor between 5 and 60;

select * from tb_produtos where nome like "%C%";

select * from tb_produtos
inner join tb_categorias on tb_categorias.id = tb_produtos.categoriasid;

select * from tb_produtos
inner join tb_categorias on tb_categorias.id = tb_produtos.categoriasid where categoriasid = 6;

