create database gervenda_1e;
use gervenda_1e;

create table produtos(
produto_id int auto_increment primary key,
nome varchar(50),
preco decimal(10,2),
estoque int
);

create table vendas(
venda_id int auto_increment primary key,
produto_id int,
quantidade int,
data_venda date,
foreign key(produto_id) references produtos(produto_id)
);

insert into produtos(nome, preco, estoque)
values("Notebook Dell", 7000.00, 35),
      ("Notebook Lenovo", 5000.00, 35),
      ("Notebook Acer", 6000.00, 35),
      ("Notebook Samsung", 5500.00, 35);
      
insert into vendas(produto_id, quantidade, data_venda)
values(1,5,"2024-05-20");

update produtos
set preco = 6500.00
where produto_id = 1;

update vendas
set quantidade = 7
where venda_id = 1;

delete from produtos
where produto_id = 3;

delete from vendas
where venda_id = 1;

select * from produtos;
select nome, estoque from produtos;

select * from vendas
where venda_id = 2;