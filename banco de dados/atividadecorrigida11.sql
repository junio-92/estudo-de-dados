use atividade10;

create database atividade10;

create table mae(
id_mae int(5),
nome_mae varchar(45),
primary key (id_mae)
);

create table filho (
	id_filho int(5), 
    nome_filho varchar(40),
	id_mae int(5),
	primary key(id_filho),
    foreign  key (id_mae) references mae(id_mae)

);

insert into mae values (id_mae,nome_mae),
(1,"Neide "),
(2,"Ana "),
(3,"Sakura");

insert into filho values (id_filho, nome_filho, id_mae),
(1," Zeltran ",1),
(2,"Thanos ",1),
(3,"Valeria ",1),
(4,"Michael ",2),
(5,"Daniela",2),
(6,"Garcia",2),
(7,"Isadora",3),
(8,"Lucila",3),
(9,"Brunilda",3);

select nome_mae, nome_filho
from mae 
inner join filho 
on mae.id_mae = filho.id_mae;

insert into mae ( id_mae, nome_mae) values
(4,"Ofelia"),
(5,"Bellaria");

insert  into filho (id_filho, nome_filho, id_mae) values
(10,"lucrecia ",null),
(11,"Binna ",null),
(12,"Ster",null),
(13,"Raimunda ",null);

select nome_mae, nome_filho
from mae
left join filho
on mae.id_mae = mae.id_mae;


select nome_mae, nome_filho
from mae
right join filho
on mae.id_mae = mae.id_mae;

update mae set nome_mae = 'Neide'where id_mae= '1';

update filho set nome_filho = 'Zeltran' where id_filho = '1';
 
delete from mae where nome_mae ='3';

delete from filho where nome_filho ='4';

alter table mae add idade varchar(20);

update mae set idade =55 where id_mae = 1;
update mae set idade = 30 where id_mae = 2;
update mae set idade = 22 where id_mae = 3;

select avg (idade) from mae;
select count (id_filho) from filho;
select max (id_mae)from mae;
  

 