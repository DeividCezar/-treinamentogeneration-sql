-- Atividade 02
create database db_pizzaria_legal;
use db_pizzaria_legal;

-- Boa prática 1
create table tb_categorias(
	id int not null auto_increment,
	tamanho varchar(1) not null,
    salgada boolean  not null,
    primary key(id)
);

-- Boa prática 2 e 3
create table tb_pizzas(
	id int not null auto_increment,
    sabor varchar(50) not null,
	preco decimal not null,
    descontoAVista boolean not null,
    pontuaNoAplicativo boolean not null,
    categoria_id int not null,
	primary key(id),
    foreign key(categoria_id) references tb_categorias(id)
);

-- Boa prática 4
insert into tb_categorias(tamanho, salgada) values('P', true);
insert into tb_categorias(tamanho, salgada) values('M', true);
insert into tb_categorias(tamanho, salgada) values('G', true);
insert into tb_categorias(tamanho, salgada) values('P', false);
insert into tb_categorias(tamanho, salgada) values('M', false);

-- Boa prática 5
insert into tb_pizzas(sabor, preco, descontoAVista, pontuaNoAplicativo, categoria_id) values('Mussarela', 50.00, true, true, 1);
insert into tb_pizzas(sabor, preco, descontoAVista, pontuaNoAplicativo, categoria_id) values('Mussarela', 60.00, true, true, 2);
insert into tb_pizzas(sabor, preco, descontoAVista, pontuaNoAplicativo, categoria_id) values('Mussarela', 70.00, true, true, 3);
insert into tb_pizzas(sabor, preco, descontoAVista, pontuaNoAplicativo, categoria_id) values('Frango com requeijão', 40.00, true, true, 1);
insert into tb_pizzas(sabor, preco, descontoAVista, pontuaNoAplicativo, categoria_id) values('Frango com requeijão', 50.00, true, true, 2);
insert into tb_pizzas(sabor, preco, descontoAVista, pontuaNoAplicativo, categoria_id) values('Frango com requeijão', 60.00, true, true, 3);
insert into tb_pizzas(sabor, preco, descontoAVista, pontuaNoAplicativo, categoria_id) values('Ninho com morango', 70.00, true, true, 4);
insert into tb_pizzas(sabor, preco, descontoAVista, pontuaNoAplicativo, categoria_id) values('Ninho com morango', 80.00, true, true, 5);

-- Boa prática 6
select * from tb_pizzas where preco > 45;

-- Boa prática 7 
select * from tb_pizzas where preco between 50 and 100;

-- Boa prática 8
select * from tb_pizzas where sabor like '%m%';

-- Boa prática 9
select * from tb_pizzas inner join tb_categorias on tb_pizzas.categoria_id = tb_categorias.id;

-- Boa prática 10
select * from tb_pizzas inner join tb_categorias on tb_pizzas.categoria_id = tb_categorias.id
where salgada = false;