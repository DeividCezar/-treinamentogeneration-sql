-- Atividade 04
create database db_cidade_das_carnes;
use db_cidade_das_carnes;

-- Boa prática 1
create table tb_categorias(
	id int not null auto_increment,
	categoria varchar(50) not null,
    temperada boolean not null,
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
insert into tb_categorias(categoria, temperada) values('aves', true);
insert into tb_categorias(categoria, temperada) values('aves', false);
insert into tb_categorias(categoria, temperada) values('boi', true);
insert into tb_categorias(categoria, temperada) values('boi', false);
insert into tb_categorias(categoria, temperada) values('porco', false);

-- Boa prática 5
insert into tb_produtos(nome, preco, descontoAVista, pontuaNoAplicativo, categoria_id) values('Sobrecoxa', 12.00, true, true, 1);
insert into tb_produtos(nome, preco, descontoAVista, pontuaNoAplicativo, categoria_id) values('Sobrecoxa', 10.00, true, true, 2);
insert into tb_produtos(nome, preco, descontoAVista, pontuaNoAplicativo, categoria_id) values('Asinha', 8.00, true, true, 1);
insert into tb_produtos(nome, preco, descontoAVista, pontuaNoAplicativo, categoria_id) values('Asinha', 6.00, true, true, 2);
insert into tb_produtos(nome, preco, descontoAVista, pontuaNoAplicativo, categoria_id) values('Picanha', 60.00, true, true, 3);
insert into tb_produtos(nome, preco, descontoAVista, pontuaNoAplicativo, categoria_id) values('Picanha', 40.00, true, true, 4);
insert into tb_produtos(nome, preco, descontoAVista, pontuaNoAplicativo, categoria_id) values('Sobre-paleta', 18.00, true, true, 5);
insert into tb_produtos(nome, preco, descontoAVista, pontuaNoAplicativo, categoria_id) values('Lombo', 20.00, true, true, 5);

-- Boa prática 6
select * from tb_produtos where preco > 50;

-- Boa prática 7 
select * from tb_produtos where preco between 50 and 150;

-- Boa prática 8
select * from tb_produtos where nome like '%c%';

-- Boa prática 9
select * from tb_produtos inner join tb_categorias on tb_produtos.categoria_id = tb_categorias.id;

-- Boa prática 10
select * from tb_produtos inner join tb_categorias on tb_produtos.categoria_id = tb_categorias.id
where categoria = 'boi';