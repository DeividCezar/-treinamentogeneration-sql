create database exercicio2;
use exercicio2;

create table produtos(
	id int not null auto_increment,
    nome varchar(150) not null,
	preco decimal(8,2) not null,
    categoria varchar(50) not null,
    cashback boolean not null,
    primary key(id)
);

insert into produtos(nome, preco, categoria, cashback) value('Mouse Multilaser com fio', 25.00, 'Eletrônicos', true);
insert into produtos(nome, preco, categoria, cashback) value('Mouse Multilaser sem fio', 70.00, 'Eletrônicos', true);
insert into produtos(nome, preco, categoria, cashback) value('Teclado Multilaser sem fio', 400.00, 'Eletrônicos', false);
insert into produtos(nome, preco, categoria, cashback) value('Notebook Acer 14 I5', 2500.00, 'Eletrônicos', true);
insert into produtos(nome, preco, categoria, cashback) value('Notebook Acer 15 I3', 3500.00, 'Eletrônicos', true);
insert into produtos(nome, preco, categoria, cashback) value('Notebook Acer 15 I5', 4500.00, 'Eletrônicos', true);
insert into produtos(nome, preco, categoria, cashback) value('Notebook Acer 15 I7', 5000.00, 'Eletrônicos', true);
insert into produtos(nome, preco, categoria, cashback) value('Notebook Acer 15 R7', 6000.00, 'Eletrônicos', true);
    
select * from produtos where preco > 500;

select * from produtos where preco < 500;

update produtos set preco = 200 where id = 3;

select * from produtos;