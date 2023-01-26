create database exercicio3;
use exercicio3;

create table estudantes(
	id int not null auto_increment,
    nome varchar(150) not null,
	idade int not null,
    nota decimal(3,1) not null,
    sala int not null,
    primary key(id)
);

insert into estudantes(nome, idade, nota, sala) value('Ana', 12, 8.0, 20);
insert into estudantes(nome, idade, nota, sala) value('Beatriz', 12, 6.0, 20);
insert into estudantes(nome, idade, nota, sala) value('Caique', 13, 6.0, 20);
insert into estudantes(nome, idade, nota, sala) value('Douglas', 13, 5.0, 20);
insert into estudantes(nome, idade, nota, sala) value('Eliandro', 13, 5.0, 20);
insert into estudantes(nome, idade, nota, sala) value('Fernanda', 12, 9.0, 20);
insert into estudantes(nome, idade, nota, sala) value('Geandro', 12, 10.0, 20);
insert into estudantes(nome, idade, nota, sala) value('Hugo', 12, 10.0, 20);
    
select * from estudantes where nota > 7;

select * from estudantes where nota < 7;

update estudantes set nota = 6.5 where id = 3;

select * from estudantes;