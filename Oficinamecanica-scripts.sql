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
-- Clientes
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
-- Mecanico x Especialidades 
select * from mecanicos_has_especialidades;

-- Scripts 
-- Veiculos x Clientes 
select cli.*,vei.placa,vei.marca,vei.ano,vei.modelo from cliemtes as cli
	left join veiculos as vei on vei.cliemtes_idcliemtes = cli.idcliemtes
group by cli.idcliemtes,vei.placa
having count(vei.idveiculos) >= 1  ;

-- Clientes x OS 
select * from cliemtes as cli 
	left join veiculos as vei on vei.cliemtes_idcliemtes = cli.idcliemtes
    left join veiculos_has_os as vhos on vhos.veiculos_cliemtes_idcliemtes = cli.idcliemtes
Where cli.ativo = 1;

-- Pecas usadas e valor 
select phos.pecas_idpecas,pca.descricao,sum(qtdepecas) as qtde, sum(phos.total)  as total from pecas_has_os as  phos
	left join pecas pca on pca.idpecas = phos.pecas_idpecas
group by phos.pecas_idpecas,pca.descricao;

-- Serviços 
select serv.idservicos,serv.descricao,sum(shos.qtdeservico) as qtde, sum(shos.total) as total from servicos as serv
	left join servicos_has_os as shos on serv.idservicos = shos.servicos_idservicos
group by serv.idservicos,serv.descricao;

-- Mecanicos x Especialidades 
select * from mecanicos as mec
	left join mecanicos_has_especialidades as mhe on mhe.mecanicos_idmecanicos = mec.idmecanicos
    left join especialidades as esp on mhe.especialidades_idespecialidades = esp.idespecialidades
order by mec.nome;




