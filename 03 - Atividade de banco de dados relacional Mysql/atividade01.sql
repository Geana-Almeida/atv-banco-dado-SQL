create database db_generation_game_online;

use db_generation_game_online;

create table tb_classes(
	id bigint auto_increment,
    classe varchar(255) not null,
    Arma varchar(255) not null,
    elemento varchar(255) not null,
    primary key (id)
);

insert into tb_classes(classe, arma, elemento) 
VALUES ("Mago", "Cajado", "Fogo");
insert into tb_classes(classe, arma, elemento) 
VALUES ("Mago", "Cajado", "Agua");
insert into tb_classes(classe, arma, elemento) 
VALUES ("Mago", "Cajado", "Terra");
insert into tb_classes(classe, arma, elemento) 
VALUES ("Mago", "Cajado", "Deus");
insert into tb_classes(classe, arma, elemento) 
VALUES ("Atirador", "Arco e Flecha", "Fogo");
insert into tb_classes(classe, arma, elemento) 
VALUES ("Atirador", "Arco e Flecha", "Agua");
insert into tb_classes(classe, arma, elemento) 
VALUES ("Atirador", "Arco e Flecha", "Terra");
insert into tb_classes(classe, arma, elemento) 
VALUES ("Atirador", "Arco e Flecha", "Deus");


select * from tb_classes;

create table tb_personagens(
	id bigint auto_increment,
    nome varchar(255) not null,
    raca varchar(255) not null,
    forca decimal(6,2) not null,
    defesa decimal(6,2) not null,
    classesid bigint,
    primary key (id),
    CONSTRAINT fk_personagens_classes FOREIGN KEY (classesid) REFERENCES tb_classes(id)
);


INSERT INTO tb_personagens (nome, raca, forca, defesa, classesid)
VALUES ("Jose", "Elfo", 2000.00, 2000.00, 4);
INSERT INTO tb_personagens (nome, raca, forca, defesa, classesid)
VALUES ("Julia", "Elfa", 3000.00, 2400.00, 1);
INSERT INTO tb_personagens (nome, raca, forca, defesa, classesid)
VALUES ("Lucia", "Humano", 1500.00, 2200.00, 6);
INSERT INTO tb_personagens (nome, raca, forca, defesa, classesid)
VALUES ("Lucas", "Humano", 2000.00, 2200.00, 7);
INSERT INTO tb_personagens (nome, raca, forca, defesa, classesid)
VALUES ("Geana", "Elfa", 5000.00, 5000.00, 8);
INSERT INTO tb_personagens (nome, raca, forca, defesa, classesid)
VALUES ("Cesar", "Elfo", 4000.00, 4000.00, 6);
INSERT INTO tb_personagens (nome, raca, forca, defesa, classesid)
VALUES ("Xosher", "Humano", 3000.00, 3000.00, 3);
INSERT INTO tb_personagens (nome, raca, forca, defesa, classesid)
VALUES ("Felphs", "Elfo", 2500.00, 4000.00, 6);

alter table tb_personagens change forca ataque varchar(255);

select * from tb_personagens where ataque > 2000;

select * from tb_personagens where defesa between 1000 and 2000;

select * from tb_personagens where nome like "%c%";

select * from tb_personagens 
inner join tb_classes on tb_classes.id = tb_personagens.classesid; 

select * from tb_personagens 
inner join tb_classes on tb_classes.id = tb_personagens.classesid where classe = "Mago"; 



