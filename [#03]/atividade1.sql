-- Atividade 01
create database db_generation_game_online;
use db_generation_game_online;

-- Boa prática 1
create table tb_classes(
	id int not null auto_increment,
	classe varchar(50) not null,
    regiao varchar(50) not null,
    primary key(id)
);

-- Boa prática 2 e 3
create table tb_personagens(
	id int not null auto_increment,
    nome varchar(100) not null,
	poderAtaque int not null,
    poderDefesa int not null,
    vida int not null,
    classe_id int not null,
	primary key(id),
    foreign key(classe_id) references tb_classes(id)
);

-- Boa prática 4
insert into tb_classes(classe, regiao) values('Mago', 'Avonlea');
insert into tb_classes(classe, regiao) values('Atirador', 'Avonlea');
insert into tb_classes(classe, regiao) values('Tanque', 'Avonlea');
insert into tb_classes(classe, regiao) values('Mago', 'Green Gables');
insert into tb_classes(classe, regiao) values('Assassino', 'Green Gables');

-- Boa prática 5
insert into tb_personagens(nome, poderAtaque, poderDefesa, vida, classe_id) values('Irelia', 1800, 600, 5000, 5);
insert into tb_personagens(nome, poderAtaque, poderDefesa, vida, classe_id) values('Zed', 2200, 500, 4000, 5);
insert into tb_personagens(nome, poderAtaque, poderDefesa, vida, classe_id) values('Nunu', 300, 1000, 10000, 3);
insert into tb_personagens(nome, poderAtaque, poderDefesa, vida, classe_id) values('Alistar', 150, 1200, 12000, 3);
insert into tb_personagens(nome, poderAtaque, poderDefesa, vida, classe_id) values('Veigar', 2500, 100, 500, 1);
insert into tb_personagens(nome, poderAtaque, poderDefesa, vida, classe_id) values('Rammus', 200, 60, 1500, 3);
insert into tb_personagens(nome, poderAtaque, poderDefesa, vida, classe_id) values('Vayne', 500, 600, 900, 2);
insert into tb_personagens(nome, poderAtaque, poderDefesa, vida, classe_id) values('Corki', 1100, 300, 2000, 5);

-- Boa prática 6
select * from tb_personagens where poderAtaque > 2000;

-- Boa prática 7 
select * from tb_personagens where poderDefesa between 1000 and 2000;

-- Boa prática 8
select * from tb_personagens where nome like '%c%';

-- Boa prática 9
select * from tb_personagens inner join tb_classes on tb_personagens.classe_id = tb_classes.id;

-- Boa prática 10
select * from tb_personagens inner join tb_classes on tb_personagens.classe_id = tb_classes.id
where classe = 'Mago';