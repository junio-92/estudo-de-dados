create database universo
default character set utf8
default collate utf8_general_ci;


create table junioherois (
id int not null auto_increment,
nome varchar(30) not null,
nascimento date,
sexo enum ('M','F'),
peso decimal(5,2),
altura decimal(5,2),
nacionalidade varchar (20) default 'Brasil',
primary key (id)

)default charset = utf8;


