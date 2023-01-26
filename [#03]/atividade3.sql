-- Atividade 03
create database db_farmacia_bem_estar;
use db_farmacia_bem_estar;

-- Boa prática 1
create table tb_categorias(
	id int not null auto_increment,
	categoria varchar(50) not null,
    manipulacao boolean not null,
    primary key(id)
);

-- Boa prática 2 e 3
create table tb_produtos(
	id int not null auto_increment,
    nome varchar(50) not null,
	preco decimal not null,
    descontoAVista boolean not null,
    pontuaNoAplicativo boolean not null,
    categoria_id int not null,
	primary key(id),
    foreign key(categoria_id) references tb_categorias(id)
);

-- Boa prática 4
insert into tb_categorias(categoria, manipulacao) values('saude', true);
insert into tb_categorias(categoria, manipulacao) values('saude', false);
insert into tb_categorias(categoria, manipulacao) values('beleza', true);
insert into tb_categorias(categoria, manipulacao) values('beleza', false);
insert into tb_categorias(categoria, manipulacao) values('outros', false);

-- Boa prática 5
insert into tb_produtos(nome, preco, descontoAVista, pontuaNoAplicativo, categoria_id) values('Ibulotomina com amoxilina', 60.00, true, true, 1);
insert into tb_produtos(nome, preco, descontoAVista, pontuaNoAplicativo, categoria_id) values('Ibulotomina com amoxilina', 120.00, true, true, 2);
insert into tb_produtos(nome, preco, descontoAVista, pontuaNoAplicativo, categoria_id) values('Ibulotomina', 30.00, true, true, 1);
insert into tb_produtos(nome, preco, descontoAVista, pontuaNoAplicativo, categoria_id) values('Ibulotomina', 60.00, true, true, 2);
insert into tb_produtos(nome, preco, descontoAVista, pontuaNoAplicativo, categoria_id) values('Creme facial ativado', 5.00, true, true, 3);
insert into tb_produtos(nome, preco, descontoAVista, pontuaNoAplicativo, categoria_id) values('Água com gás', 3.00, true, true, 5);
insert into tb_produtos(nome, preco, descontoAVista, pontuaNoAplicativo, categoria_id) values('Água sem gás', 4.00, true, true, 5);
insert into tb_produtos(nome, preco, descontoAVista, pontuaNoAplicativo, categoria_id) values('Suco', 6.00, true, true, 5);

-- Boa prática 6
select * from tb_produtos where preco > 50;

-- Boa prática 7 
select * from tb_produtos where preco between 5 and 60;

-- Boa prática 8
select * from tb_produtos where nome like '%c%';

-- Boa prática 9
select * from tb_produtos inner join tb_categorias on tb_produtos.categoria_id = tb_categorias.id;

-- Boa prática 10
select * from tb_produtos inner join tb_categorias on tb_produtos.categoria_id = tb_categorias.id
where categoria = 'outros';