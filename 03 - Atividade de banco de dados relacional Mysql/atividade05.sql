create database db_construindo_vidas;

use db_construindo_vidas;

create table tb_categorias(
	id bigint auto_increment,
    categoria varchar(255) not null,
    descricao varchar(255) not null,
    primary key (id)
);

INSERT INTO tb_categorias (categoria, descricao) VALUES
('Cimentos', 'Diversos tipos de cimento, incluindo cimento Portland, cimento para reparo e cimento para uso geral.'),
('Tintas', 'Tintas e vernizes para acabamento, incluindo opções para interiores e exteriores.'),
('Ferramentas', 'Ferramentas manuais e elétricas para construção e reparo, como martelos, furadeiras e serrotes.'),
('Materiais Elétricos', 'Produtos relacionados a instalações elétricas, como fios, cabos, tomadas e interruptores.'),
('Revestimentos', 'Revestimentos para pisos e paredes, incluindo cerâmicas, porcelanatos e azulejos.'),
('Tubos e Conexões', 'Tubos e acessórios para sistemas de encanamento e esgoto, incluindo PVC, cobre e conexões variadas.'),
('Madeiras', 'Diversos tipos de madeira para construção e acabamento, incluindo tábuas, vigas e compensados.');


select * from tb_categorias;

create table tb_produtos(
	id bigint auto_increment,
    nome varchar(255) not null,
    valor decimal(5,2) not null,
    promocao boolean not null,
    peso decimal(6,2),
    categoriasid bigint,
    primary key (id),
    constraint fk_produtos_categorias foreign key (categoriasid) references tb_categorias(id)
);

INSERT INTO tb_produtos (nome, valor, promocao, peso, categoriasid) VALUES
('Cimento Portland 50kg', 25.50, FALSE, 50.00, 1), 
('Tinta Acrílica 18L', 120.00, TRUE, 18.00, 2), 
('Furadeira Elétrica 500W', 199.90, FALSE, 2.50, 3),
('Fio Elétrico 100m', 55.00, TRUE, 1.20, 4), 
('Cerâmica 30x30cm', 29.90, FALSE, 0.75, 5), 
('Tubo PVC 2m', 15.75, FALSE, 2.00, 6), 
('Madeira Compensado 15mm', 89.90, TRUE, 12.00, 7), 
('Pincel para Tinta 2" ', 9.99, FALSE, 0.30, 2);


select * from tb_produtos where valor > 100;

select * from tb_produtos where valor between 70 and 150;

select * from tb_produtos where nome like "%C%";

select * from tb_produtos
inner join tb_categorias on tb_categorias.id = tb_produtos.categoriasid;

select * from tb_produtos
inner join tb_categorias on tb_categorias.id = tb_produtos.categoriasid where categoriasid = 2;