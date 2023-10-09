create table if not exists heroisbrasil (
nome varchar (30) not null unique,
descricao text,
cargahoraria int unsigned,
totaltrinos int unsigned,
ano year default '2023'

)default charset=utf8;

alter table heroisbrasil
add column idtreinos int first;

alter table heroisbrasil
add primary key (idtreinos);

describe heroisbrasil;

/* creando nova tabela */ 
