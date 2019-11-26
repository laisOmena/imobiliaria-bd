drop database imobiliaria;
create database imobiliaria;

use imobiliaria;


create table Imobiliaria(
    cnpj varchar(14) primary key not null,
    nome varchar(30),
    endereco varchar(30)

);

create table Corretor(
    creci smallint(5) primary key not null,
    nome varchar(30),
    telefone varchar(11),
    cnpjImobiliaria varchar(14),
    foreign key (cnpjImobiliaria) references Imobiliaria(cnpj)
);

create table Cliente(
    cpf varchar(11) primary key not null,
    telefone varchar(11),
    nome varchar(30),
    creciCorretor smallint(5),
    foreign key (creciCorretor) references Corretor(creci)
);

create table Imovel(
    matricula int primary key not null,
    tipo enum('casa', 'apartamento', 'comercio'),
    state enum('alugado', 'vendido', 'disponivel'),
    endereco varchar(30),
    nome varchar(30),
    preco float,
    cnpjImobiliaria varchar(14),
    foreign key (cnpjImobiliaria) references Imobiliaria(cnpj)
);

create table Contrato(
    numero int primary key not null,
    tipo enum('venda', 'aluguel'),
    fiador tinyint,
    creciCorretor smallint(5),
    cpfCliente varchar(11),
    matriculaImovel int,
    foreign key (creciCorretor) references Corretor(creci),
    foreign key (cpfCliente) references Cliente(cpf),
    foreign key (matriculaImovel) references Imovel(matricula)

);

create table Historico(
    protocolo int not null primary key,
    dataHistorico date,
    descricao longtext,
    creciCorretor smallint(5),
    matImovel int,
    foreign key (creciCorretor) references Corretor(creci),
    foreign key (matImovel) references Imovel(matricula)
);