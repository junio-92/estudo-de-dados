desc companheiros;

alter table companheiros
add column profissao varchar (20) after nascimento;

alter table companheiros
add  codigo int first; 

alter table companheiros
modify column profissao varchar (30)

alter table companheiros
drop column profissao;

select * from companheiros;
