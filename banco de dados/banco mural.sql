create database db_junio_dias;
use db_junio_dias;

create table cliente(
id_cliente int (5),
nome_cliente varchar(45),
numero_telefone varchar(10),
cidade varchar(50),
primary key (id_cliente)
);

create table roupa(
id_roupa int (6),
tipo_roupa varchar(33),
tamanho_roupa varchar (33),
cor_roupa char (20),
id_cliente int(5),
primary key (id_roupa),
foreign key (id_roupa) references cliente (id_cliente)
);

create table vendedor(
id_vend int (5),
nome_vend varchar(50),
telefone char (10),
email char (50)
);

insert cliente value (id_roupa,nome_cliente,numero_telefone,cidade),
(021, "Pedro", "988834489", "Belo Horizonte"),
(908, "Carlos", "933889935", "Belo Horizonte"),
(333, "Joana", "944449987", "Nova Lima"),
(111, "Lucia", "9997732", "sete Lagoas"),
(533, "Lincon", "923452489", "Belo Horizonte");


insert into  roupa value (id_roupa,tipo_roupa,tamnaho_roupa,cor_roupa,id_cliente),
(99922, "jaqueta", "M","preto",12-33),
(12345, "roupao", "GG","marrom",22-33),
(11164, "bermuda", "P","preto",33-12),
(11371, "bermuda", "M","azul",35-76),
(55598, "meia", "PP","verde",90-00);




insert into vendedor value (id_vend,nome_vent,telefone,email),
(111, "Rogerio", "956784567", "leticiatt@outlook.com"),
(332, "Paulo", "934577890", "italopedro@yahoo.com"),
(443, "Naruto", "908764231", "junioicard@gmal.com"),
(664, "Luiza", "934567832", "wevertomgonzaga@gmal.com"),
(005, "Luter", "945678923", "vanessaV@gmal.com");

-- 1 Fazer consulta de quantos clientes são de Belo Horizonte
-- 2 Mudar nome de um cliente
-- 3 Fazer consulta de quantas bermudas foram vendidas
-- 4 Verificar qual cliente tem a mairo peça de roupa
-- 5 Delete um tipo de roupa da tabela
-- 6 Delete um tipo de email
-- 7 Troque o nome de um cliente 
-- 8 Consultar quantas peças de roupa da cor preta foram vendidas
-- 9 Verificar quantos clientes compraram a roupa tamanho M
-- 10 Consulte qual cliente tem a menor peça de roupa

