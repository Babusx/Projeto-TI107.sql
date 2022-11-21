--apagando banco de dados caso existir

drop database dbmercearia;

--criando banco de dados 

create database dbmercearia;

--acessando bando de dados 

use dbmercearia;

--criando tabela banco de dados 

create table tbfuncionarios(
codfunc int not null auto_increment,
nome varchar(100) not null,
email varchar(100),
telefone char(10),
cpf char(14) not null unique,
sexo char(1) default 'F' check(sexo in('F','M')),
salario decimal(9,2) default 0 check(salario >= 0),
primary key(codfunc)
);

create table tbFornecedores(
codForn int null auto_increment,
nome varchar(100),
cnpj char(18) unique,
ie char(12) unique,
logradouro varchar(100),
numero char(5),
cep char(9),
bairro varchar(100),
cidade varchar(50),
estado varchar(50),
telefone char (10),
primary key(codforn)
);

create table tbClientes(
codcli int null auto_increment,
nome varchar(100),
email varchar(100),
cpf char(14)not null unique,
primary key(codcli)
);

create table tbUsuarios(
codusu int not null auto_increment,
nome varchar(50) not null,
senha varchar(20) not null,
codfunc int not null,
primary key(codusu),
foreign key(codfunc) references tbfuncionarios (codfunc)
);

create table tbProdutos(
codProd int not null auto_increment,
descricao varchar(100),
quantidade int default 0 check(quantidade>=0),
valor decimal(9,2) default 0 check(valor>=0),
dataEntrada date,
horaEntrada time,
codForn int not null,
primary key(codProd),
foreign key(codForn)references tbFornecedores(codForn)
);

create  table tbVendas(
codVend int not null auto_increment,
codCli int not null,
codProd int not null,
codUsu int not null,
dataVenda date,
horaVenda time,
quantidade int default 0 check(quantidade>=0),
primary key(codVend),
foreign key(codCli)references tbClientes(codCli),
foreign key(codProd)references tbProdutos(codProd),
foreign key(codUsu)references tbUsuarios(codUsu)
);

--visualizar a estrutura da tabela
desc tbfuncionarios;
desc tbusuarios;
desc tbFornecedores;
desc tbProdutos;
desc tbClientes;

-- inserir registro na tabela 
insert into tbfuncionarios(nome,email,telefone,cpf,sexo,salario)
	values('Ricardo Antunes','ricardo.antunes@hotmail.com',
		'97412-4875','258.247.258-88','M',1500.25);
insert into tbfuncionarios(nome,email,telefone,cpf,sexo,salario)
	values('Paulo Eiro','paulo.eiro@hotmail.com',
		'90902-5544','555.347.978-98','M',2500.25);

insert into tbusuarios(nome,senha,codfunc)
	values('paulo.eiro','123456',2);
insert into tbusuarios(nome,senha,codfunc)
    values('ricardo.antunes','65412',1); 

--visualizar os registros da tabela 
select * from tbfuncionarios;
select * from tbusuarios;
select * from tbFornecedores;
select * from tbProdutos;
select * from tbClientes;