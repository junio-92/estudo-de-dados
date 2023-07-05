CREATE database gelaterias;
use gelaterias;



create table gelado(
id_gelado int(5),
tipo varchar(5),
sabor varchar(45),
preco char(5)
);


insert into sorvete (id_gelado,tipo,sabor,preco)values
(1,"picole","amora","2,50"),
(2,"chup-chup","morango","1,50"),
(3,"paleta","abacate","5,00"),
(4,"sorvete","chocolate","4,00"),
(5,"raspadinha","coco","4,50");

create user 'atividade133'@'localhost'identified by '222';
select user from mysql.user;
drop user atividade13@localhost;
grant insert on gelaterias.gelado to atividade13@localhost;














