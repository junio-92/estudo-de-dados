
create database db_Lucas;

use db_Lucas;




create table cliente (
id_cliente int(5),
nome_cliente varchar(45),
telefone varchar(9),
email varchar(45),
primary key (id_cliente)
);


create table animal_nova(
id_animal int(5),
nome_pets varchar(30),
nome_cliente varchar(30),
raça_animal varchar (30),
especie varchar (30),
sexo char (1),
nascimento  date,
id_cliente int(5),

FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente)
);

rename table  animal_nova to animes;
create table veterinario(
id_Vet varchar(5),
nome_Vet varchar(45),
telefone char (9),
email char (45)
);


insert cliente value (id_cliente,nome_cliente,telefone,email),
(1, "Isa", "980743646", "Isa445@gmal.com"),
(2, "Denny", "945312789", "Denny6@gmal.com"),
(3, "Aline", "954532765", "Aline89@gmal.com"),
(4, "Lucas", "912654678", "Lucas003@gmal.com"),
(5, "Luis", "976541285", "Luis34@gmal.com");


insert into  animes value (id_animal,nome_pets,Nome_cliente,raça_animal,especie,sexo,nascimento,id_cliente),
(17897, "Suzie", "Luis","Lhasa apso","Cachorro","F", "2016-03-18",5),
(24326, "Bob", "Aline","Husky siberiano","Cachorro","M", "2018-07-06",3),
(38564, "Salem", "Isa","Persa","Gato","M", "2012-05-20",1),
(42371, "Luna", "Denny","Munchkin","Gato","F", "2017-05-06",2),
(53098, "Aphrodite", "Lucas","Munchkin","Gato","F", "2020-03-07",4);




insert into Veterinário value (id_Vet,nome_Vet,telefone,email),
(1, "Isaac", "956784567", "IsaacVet@gmal.com"),
(2, "Henrique", "934577890", "HenriqueVet6@gmal.com"),
(3, "Debora", "908764231", "DeboraVet@gmal.com"),
(4, "Luiz", "934567832", "LuizVet@gmal.com"),
(5, "Luc", "945678923", "LucVet@gmal.com");



select * from animal;

DELETE FROM `db_lucas`.`cliente` WHERE (`id_cliente` = '0');



