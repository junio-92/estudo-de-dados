create database imovel;
use imovel;
drop table casa;
create table casa (

id int not null auto_increment,

nome varchar(30) not null,
 idade tinyint,
nascimento date,
peso decimal (5,2), 
sexo enum ('M', 'F'),
altura decimal (3,2),
pais varchar (20) default 'Brasil',
estado varchar (20) ,
cidade varchar (20),
bairro varchar (20),
rua varchar (20),
cep int,
numero int,
imoveis varchar (20),

primary key (id)

)default charset = utf8;


insert into casa values
('1','Telidio','31','1992-04-01','86','M','1.71','Brasil','Minas Gerais','Belo Horizonte','Vila Antena','Principal','30451533','55','kitnet'),
('2','Trikse','30','1991-04-06','75','F','1.68','EUA','Nova York','New York','Brukilin ','Dayaou','30451544','56','Apartamento'),
('3','Traruira','24','1999-08-02','76','M','1.72','Brasil','Minas Gerais','Belo Horizonte','Vila Antena','Principal','52478632','15','casa'),
('4','Zeltran','31','1992-07-21','80','M','1.71','Brasil','São Paulo','São Paulo','Morumbi','Cutia','52555533','331','Manasão'),
('5','Daniel','33','1990-08-15','81','M','1.83','Isrrael','Arava','Idan','Idani','Idan','30444212','44','Castelo'),
('6','Diego','21','2002-05-01','79','M','1.80','Brasil','Minas Gerais','Santa Luzia','Ponte Grande','Lindoza','30451663','111','casa');

select * from casa;

