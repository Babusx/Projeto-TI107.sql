--apagando banco de dados se existir

drop database dbzoologico;

--criando banco de dados 
create database dbzoologico;

-- acessando banco de dados

use dbzoologico;

--criando tabela no banco de dados 

create table tbanimais(
codigo int,
tipo char (15),
nome char(30),
idade int,
valor decimal(10,2));

--vizualizando a estrutura da tabela criada 

desc tbanimais;

--cadastrando/inserindo registros nas tabelas 

insert into tbanimais (codigo,tipo,nome,idade,valor)
	values (1,'cachorro','bolt','2','200.00');

insert into tbanimais (codigo,tipo,nome,idade,valor)
	values (2,'pato','donald','5','50.00');

insert into tbanimais (codigo,tipo,nome,idade,valo)
	values (3,'gato','de botas','3','1.400.00');

insert into tbanimais (codigo,tipo,idade,valor)
	values (4,'papagaio','loro','20','2.000.00');

insert into tbanimais (codigo,tipo,nome,idade,valor)
	values (5,'peixe','nemo','8','100.00');
