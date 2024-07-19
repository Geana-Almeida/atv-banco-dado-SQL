create database db_curso_da_minha_vida;

use db_curso_da_minha_vida;

create table tb_categorias(
	id bigint auto_increment,
    categoria varchar(255) not null,
    descricao varchar(255) not null,
    primary key (id)
);

INSERT INTO tb_categorias (categoria, descricao) VALUES
('Matemática', 'Cursos focados em teoria e prática matemática, incluindo álgebra, cálculo e estatística.'),
('Ciências da Computação', 'Cursos relacionados ao desenvolvimento de software, programação, redes e segurança da informação.'),
('Línguas Estrangeiras', 'Cursos para aprendizado de novos idiomas, incluindo inglês, espanhol, francês e outros.'),
('Artes e Design', 'Cursos voltados para artes visuais, design gráfico, fotografia e outras formas de expressão criativa.'),
('Administração e Negócios', 'Cursos que abrangem gestão, marketing, finanças e empreendedorismo.'),
('Saúde e Bem-estar', 'Cursos sobre cuidados de saúde, nutrição, fitness e desenvolvimento pessoal.'); 



select * from tb_categorias;

create table tb_cursos(
	id bigint auto_increment,
    nome varchar(255) not null,
    valor decimal(6,2) not null,
    promocao boolean not null,
    duracao varchar(255),
    periodo varchar(255),
    categoriasid bigint,
    primary key (id),
    constraint fk_produtos_categorias foreign key (categoriasid) references tb_categorias(id)
);

INSERT INTO tb_cursos (nome, valor, promocao, duracao, periodo, categoriasid) VALUES
('Curso de Álgebra Avançada', 500.00, TRUE, '3 meses', 'Noturno', 1),
('Desenvolvimento Web Completo', 1200.00, FALSE, '6 meses', 'Diurno', 2),
('Inglês Intermediário', 800.00, TRUE, '4 meses', 'Noturno', 3),
('Design Gráfico Profissional', 1500.00, FALSE, '1 ano', 'Diurno', 4),
('Gestão Empresarial e Marketing', 1000.00, TRUE, '5 meses', 'Noturno', 5),
('Introdução à Nutrição', 450.00, FALSE, '2 meses', 'Sábado', 6),
('Matemática para Iniciantes', 750.00, TRUE, '3 meses', 'Diurno', 1),
('Programação em Python', 950.00, FALSE, '6 meses', 'Noturno', 2),
('Francês Básico', 650.00, TRUE, '3 meses', 'Diurno', 3);


select * from tb_cursos where valor > 500;

select * from tb_cursos where valor between 600 and 1000;


select * from tb_cursos where nome like "%j%";

select * from tb_cursos
inner join tb_categorias on tb_categorias.id = tb_cursos.categoriasid;

select * from tb_cursos
inner join tb_categorias on tb_categorias.id = tb_cursos.categoriasid where categoriasid = 3;