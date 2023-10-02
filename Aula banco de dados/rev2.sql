create database registro
default charset utf8
default collate utf8_general_ci;

create table companheiros (

id int not null auto_increment,

nome varchar(30) not null,
idade tinyint,
nascimento date,
peso decimal (5,2), 
sexo enum ('M', 'F'),
altura decimal (3,2),
estado varchar (20) default 'Minas',
cidade varchar (20) ,

primary key (id)

)default charset = utf8;