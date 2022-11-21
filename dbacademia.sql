-- apagando o banco de dados se existir
drop database dbacademia;

-- criar banco de dados
create database dbacademia;

-- acessando banco de dados 
use dbacademia;

-- criando as tabelas do banco de dados

create table tbfuncionarios(
codigo int,
nome varchar(100),
email varchar(100),
idade int,
rg char(12),
cpf char (14),
logradouro varchar (100),
numero char (10),
bairro varchar (100),
cidade varchar (100),
estado varchar (100));

create table tbusuarios(
codigo int,
nome varchar(20),
senha varchar(10));

create table tbprodutos(
codigo int,
descricao varchar (150),
valor decimal(9,2),
dataEntrada date,
horaEntrada time,
quantidade decimal(9,2));

-- visualizando as tabelas criadas 
show tables;

-- visualizado a estrutura das tabelas 

desc tbfuncionarios; 
desc tbusuarios;
desc tbprodutos;

-- cadastrando/inserindo registros nas tabelas 

insert into tbfuncionarios (codigo,nome,email,idade,rg,cpf,
 logradouro,numero,bairro,cidade,estado) values (1,'Pedro Antunes',
 'pedro.antunes@hotmail.com',25,'25.247.258-7','235.258.847-88',
 'Av.Dr.Antonio Bento','355','Santo Amaro','Sao Paulo','sao paulo');

 insert into tbusuarios(codigo,nome,senha)
 values(1,'pedro.antunes','123456');

insert into tbprodutos(codigo,descricao,valor,dataEntrada,horaEntrada,
  quantidade)
 values(1,'Banana Prata',10.50,'2022-10-07','08:40:55',12.5);

 --visualizando os registros cadastrados/inseridos

  select * from tbfuncionarios;
  select * from tbusuarios;
  select * from tbprodutos; 

--alterar valores nos campos das tabelas 

update tbprodutos set valor = valor  *1.10 
  where codigo = 1;

update tbprodutos set descricao = 'Morango',valor = 5.25
	where codigo = 1;

select * from tbprodutos;

--Apagando registros das tabelas 

delete from tbprodutos where codigo = 1;

select * from tbprodutos;