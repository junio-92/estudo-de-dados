create database preenchimento
default character set utf8
default collate utf8_general_ci;
use preenchimento;
create table personagem (
id int not null auto_increment,
nome varchar (30) not null,
nascimento date,
sexo enum ('m','f'),
peso decimal (7,5),
altura decimal (12,3),
nacionalidade varchar(30) default 'Brasil',
estado varchar(30) default 'Minas',
primary key (id)

)default charset = utf8;
