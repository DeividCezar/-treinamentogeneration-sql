create database exercicio1;
use exercicio1;

create table colaboradores(
	id int not null auto_increment,
    nome varchar(150) not null,
	salario decimal(8,2) not null,
    cargo varchar(50) not null,
    setor varchar(30),
    primary key(id)
);

insert into colaboradores(nome, salario, cargo, setor) value('Adão', 2500.00, 'Pedreiro', 'Obras');
insert into colaboradores(nome, salario, cargo, setor) value('Bartolomeu', 2500.00, 'Pintor', 'Obras');
insert into colaboradores(nome, salario, cargo, setor) value('Caio', 1500.00, 'Ajudante de pedreiro', 'Obras');
insert into colaboradores(nome, salario, cargo, setor) value('Deivid', 4000.00, 'Engenheiro', 'Obras');
insert into colaboradores(nome, salario, cargo, setor) value('Elias', 4000.00, 'Arquiteto', 'Obras');
    
select * from colaboradores where salario > 2000;

select * from colaboradores where salario < 2000;

update colaboradores set salario = 1800 where id = 3;

select * from colaboradores;