create database empresa3_1e;
use empresa3_1e;

drop table departamento;
drop table funcionário;
drop table dependente;

create table departamento(
Dcodigo int auto_increment primary key,
Dnome varchar (80)
);

create table funcionário(
Funcodigo int auto_increment primary key,
Dcodigo int,
nome varchar(80),
data_nasc date,
salario int,
foreign key(Dcodigo) references departamento (departamento)
);

create table dependente(
DepCodigo int auto_increment primary key,
Funcodigo int,
depnome varchar (80),
foreign key(Funcodigo) references funcionário (funcionário)
);

insert into departamento (Dcodigo, Dnome)
values (1, "RH"),
      (2, "TI"),
    (3, "SP"),
    (4, "KK"),
    (5, "GO"),
    (6, "LO"),
    (7, "JJ");
    
insert into dependente (DepCodigo, Funcodigo, depnome)
values (123, 12, "Roberto"),
      (231, 11, "Clovis"),
    (213, 13, "Jonas"),
    (456, 14, "Jodio"),
    (465, 15, "Juan"),
    (546, 16, "Jotaro"),
    (654, 17, "Josuke");
    
insert into dependente (DepCodigo, Funcodigo, depnome)
values (123, 12, "Roberto"),
    (231, 11, "Clovis"),
    (213, 13, "Jonas"),
    (456, 14, "Jodio"),
    (465, 15, "Juan"),
    (546, 16, "Jotaro"),
    (654, 17, "Josuke");
    
insert into funcionário (Funcodigo, Dcodigo, nome, data_nasc, salario)
values (11, 1, "Roberto", "1999-5-3",1000.00),
      (12, 2, "Clovis","1989-5-9",5000.00),
    (13, 3, "Jonas","2001-9-11",6000.00),
    (14, 4, "Jodio","2000-5-8",2000.00),
    (15, 5, "Juan","1999-8-2",3000.00),
    (16, 6, "Jotaro","1978-3-12",9000.00),
    (17, 7, "Josuke", "2008-9-5",500.00);
            