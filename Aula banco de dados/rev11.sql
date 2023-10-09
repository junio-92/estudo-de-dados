create table if not exists tabelaqualquer (
nome varchar (30) not null unique,
descricao text,
cargahoraria int unsigned,
totaltrinos int unsigned,
ano year default '2023'

)default charset=utf8;

drop table tabelaqualquer

/* mostrando como se pagaga uma tabela */
/* pode-se usar o comando 'if' */