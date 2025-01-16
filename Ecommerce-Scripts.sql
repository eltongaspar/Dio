-- Apresentar tabelas 
show tables;
show table status;
show databases;

-- Propriedade de tabelas 
desc produto;
describe produto;

-- schemas
use information_schema;

-- Constraints
desc table_constraints;
desc referential_constraints;
select * from referential_constraints;

-- Consultas 
select * from cliente;