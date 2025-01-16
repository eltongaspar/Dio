-- Selecionar o banco de dados 
USE mydb;

-- Apresentar tabelas 
show tables;
show table status;
show databases;

-- Propriedade de tabelas 
desc cliemtes;
describe cliemtes;

-- schemas
use information_schema;

-- Constraints
desc table_constraints;
desc referential_constraints;
select * from referential_constraints;

-- Tabelas 
-- Cleintes 
select* from cliemtes;
-- Veiculos
select * from veiculos;
-- Mecanicos 
select * from mecanicos;
-- Equipes 
select * from equipe;
-- OS
select * from os;
-- Pecas 
select * from pecas;
-- Estoque
select * from estoque; 
-- Serviços 
select * from servicos;
-- Veiculos x OS 
select * from veiculos_has_os;
-- Servicos x OS 
select * from servicos_has_os;
-- Pecas x OS
select * from pecas_has_os;
-- Pecas x Estoque 
select * from pecas_has_estoque;
-- Especialidaes 
select * from especialidades;

