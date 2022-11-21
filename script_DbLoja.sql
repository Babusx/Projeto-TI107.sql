-- apagando banco de dados criado 
drop database dbLoja;

-- criando banco de dados loja  

create database dbLoja;

-- acessando o banco de dados loja
use dbLoja;

-- criando tabelas no banco de dados
create table tbUsuarios(
codusu int,
nome varchar (50),
senha varchar (50)
);
create table tbfuncionarios(
codfunc int,
nome varchar (100),
email varchar (100),
telefone char (10),
cpf char (14),
logradouro varchar (100),
numero char (10),
bairro varchar (50),
cidade varchar (50),
estado varchar (50),
cep char (9)
);

create table tbProdutos( 
codProd int,
descricao varchar (100),
valor decimal (9,2),
dataEntrada date,
horaEntrada time,
quantidade int
);

-- visualizando a estrutura das tabelas 
desc tbProdutos;
desc tbUsuarios;
desc tbfuncionarios;
-- inserindo registros nas tabelas 
insert into tbUsuarios(codusu,nome,senha)
values(1,'maria.antunes','123456');

insert into tbUsuarios(codusu,nome,senha)
values(2,'jose.amarildo','789456');

insert into tbfuncionarios(codfunc,nome,email,telefone,cpf,logradouro,numero,
bairro,cidade,estado,cep)
values (1,'Tadeu Golias','tade.golias@gmail.com','40002-8922','499.437.268-30','guarapiranga',
'5050','São francisco','Sao Paulo','Sao Paulo','04918-190');

insert into tbfuncionarios(codfunc,nome,email,telefone,cpf,logradouro,numero,
bairro,cidade,estado,cep)
values (2,'Paulo Bloqueado','paulo.bloq@gmail.com','9867-5432','499.437.268-30','Socorro',
'1020','Rivieira','São Paulo','Sao Paulo','04918-210');

insert into tbProdutos(codprod,descricao,valor,dataEntrada,
horaEntrada,quantidade)
values (100,'Abacaxi',10.40,'2022-10-31','11:15',13);

insert into tbProdutos(codprod,descricao,valor,dataEntrada,
horaEntrada,quantidade)
values (101,'Goiaba',5.99,'2022-10-31','11:20',22);

-- visualizando os registros das tabelas 
select * from tbUsuarios;
select * from tbfuncionarios;
select * from tbProdutos;


-- Alterando valres das colunas 

update  tbProdutos set valor = valor * 1.25
where codprod = 101;

update tbProdutos set valor = valor* 0.75
where codprod = 100;
  
select * from tbProdutos;  

-- Apagando registros das linhas 

-- Pesquisa Por Nomes

-- Pesquisa por Codigo  
