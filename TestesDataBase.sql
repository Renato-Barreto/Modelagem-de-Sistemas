create table alunos(
id int not null primary key,
nome varchar(255),
sobrenome varchar(255),
idade int,
email varchar(50)
);

create table pessoa(
id int primary key not null auto_increment,
nome varchar(255),
telefone varchar(11)
);

insert into alunos(id,nome,sobrenome,idade,email) values(1,'RENATO','BARRETO',19,'RENATOBLADE@GMAIL.COM');
insert into alunos(id,nome,sobrenome,idade,email) values(2,'CAMILE','FERREIRA',25,'AMITRIPILALPS@GMAIL.COM');

insert into pessoa(id,nome,telefone) values(1,'CAMILE','71940028922');

select*from alunos;
select*from pessoa;

update alunos
set nome='ANDREI'
where id = 2

delete from alunos
where id = 2;

CREATE TABLE Voo (
  idVoo INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  Aeroporto_idAeroporto INTEGER UNSIGNED  NOT NULL  ,
  CompanhiaAerea_idCompanhiaAerea INTEGER UNSIGNED  NOT NULL  ,
  NúmeroDoVoo INTEGER UNSIGNED  NOT NULL  ,
  Origem VARCHAR(45)  NOT NULL  ,
  Destino VARCHAR(45)  NOT NULL  ,
  HorarioSaida DATETIME  NOT NULL  ,
  HorarioEntrada DATETIME  NOT NULL  ,
  AssentoDisponiveis INTEGER UNSIGNED  NOT NULL    ,
PRIMARY KEY(idVoo)  ,
INDEX Voo_FKIndex1(CompanhiaAerea_idCompanhiaAerea)  ,
INDEX Voo_FKIndex2(Aeroporto_idAeroporto));

CREATE TABLE Passageiro (
  idPassageiro INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  Voo_idVoo INTEGER UNSIGNED  NOT NULL  ,
  Nome VARCHAR(45)  NOT NULL  ,
  Idade INTEGER UNSIGNED  NOT NULL  ,
  NumeroDeIdentidade INTEGER UNSIGNED  NOT NULL    ,
PRIMARY KEY(idPassageiro)  ,
INDEX Passageiro_FKIndex1(Voo_idVoo));

CREATE TABLE Aeroporto (
  idAeroporto INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  Nome VARCHAR(45)  NOT NULL  ,
  CodigoDoAeroporto INTEGER UNSIGNED  NOT NULL  ,
  Localizacao VARCHAR(45)  NOT NULL    ,
PRIMARY KEY(idAeroporto));

CREATE TABLE Tarifa (
  idTarifa INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  Assento_idAssento INTEGER UNSIGNED  NOT NULL  ,
  Tipo VARCHAR(20)  NOT NULL  ,
  Preco INTEGER UNSIGNED  NOT NULL  ,
  Restricao VARCHAR(20)  NOT NULL    ,
PRIMARY KEY(idTarifa)  ,
INDEX Tarifa_FKIndex1(Assento_idAssento));

CREATE TABLE Assento (
  idAssento INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  Voo_idVoo INTEGER UNSIGNED  NOT NULL  ,
  NumeroDoAssento INTEGER UNSIGNED  NOT NULL  ,
  Classe VARCHAR(20)  NOT NULL  ,
  Preco INTEGER UNSIGNED  NOT NULL    ,
PRIMARY KEY(idAssento)  ,
INDEX Assentos_FKIndex1(Voo_idVoo));

CREATE TABLE CompanhiaAerea (
  idCompanhiaAerea INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  Nome VARCHAR(45)  NOT NULL  ,
  CodigoDaCompanhia INTEGER UNSIGNED  NOT NULL  ,
  PaisOrigem VARCHAR(45)  NOT NULL    ,
PRIMARY KEY(idCompanhiaAerea));
