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
select * from produto;
select * from fornecedor;
select * from terceiros_vendedor;
select * from Produto_has_Fornecedor;
select * from Produto_has_Terceiros_Vendedor;
select * from estoque;
select * from Produto_has_Estoque;
select * from pagamentos;
select * from Cliente_has_Pagamentos;
select * from pedido;
select * from Pedido_has_Produto;
select * from pagamentos_has_Pedido;

-- Relatotios 
-- Clientes e tipos de pagamentos 
select cli.idcliente,cli.nome,cli.cpf_cnpj,cli.endereço,
		pag.numero_cartao,pag.descricao,pag.cpf_titular,
	case
		when cli.tipo_pessoa = 1 then 'PF'
		when cli.tipo_pessoa = 2 then 'PJ'
	end as Tipo_Pessoa,
    	case
		when cli.ativo = 1 then 'Ativo'
		when cli.ativo = 0 then 'Inativo'
	end as Tipo_Pessoa
    from cliente as cli
	inner join cliente_has_pagamentos as clipag
		on cli.idcliente = clipag.cliente_idcliente
	inner join pagamentos as pag
		on pag.idpagamentos = clipag.pagamentos_idpagamentos;
        
-- Fornecedores x Prodtos 
select * from fornecedor fornec
	inner join Produto_has_Fornecedor prod_fornec
		on fornec.idfornecedor = prod_fornec.fornecedor_idfornecedor
	inner join produto prod
		on prod.idproduto = prod_fornec.produto_idproduto;

-- Terceiros x Prodtos 
select * from terceiros_vendedor vend
	inner join Produto_has_Terceiros_Vendedor prod_vend
		on vend.idTerceiros_Vendedor = prod_vend.Terceiros_Vendedor_idTerceiros_Vendedor
	inner join produto prod
		on prod.idproduto = prod_vend.produto_idproduto;

-- Produtos x Fornecedores ou Terceiros 
select* from produto as prod
	left join Produto_has_Fornecedor prod_fornec
		on prod.idproduto = prod_fornec.produto_idproduto
	left join fornecedor as fornec
		on fornec.idfornecedor = prod_fornec.fornecedor_idfornecedor
	left join Produto_has_Terceiros_Vendedor prod_vend
		on prod.idproduto = prod_vend.produto_idproduto
	left join terceiros_vendedor vend
		on vend.idTerceiros_Vendedor = prod_vend.Terceiros_Vendedor_idTerceiros_Vendedor;

-- Estoque 
select * from estoque as est
	left join Produto_has_Estoque as prod_est
		on prod_est.estoque_idestoque = est.idestoque
	left join produto as prod
		on prod.idproduto = prod_est.produto_idproduto;

-- Clientes que mais compraram 
SELECT 
    c.Nome AS Cliente, 
    c.`CPF-CNPJ`, 
    p.Nome AS Produto,
    pp.Qtde AS Quantidade_Vendida,
    p.Valor AS Valor_Unitario,
    (pp.Qtde * p.Valor) AS Valor_Total,
    pay.Tipo AS Tipo_Pagamento,
    pay.Descricao AS Descricao_Pagamento,
    ped.Status AS Status_Pedido,
    ped.Frete AS Frete_Pedido,
    pay.Status AS Status_Pagamento
FROM 
    mydb.Cliente c
JOIN 
    mydb.Pedido ped ON c.idCliente = ped.Cliente_idCliente
JOIN 
    mydb.Pedido_has_Produto pp ON ped.idPedido = pp.Pedido_idPedido AND ped.Cliente_idCliente = pp.Pedido_Cliente_idCliente
JOIN 
    mydb.Produto p ON pp.Produto_idProduto = p.idProduto
JOIN 
    mydb.Pagamentos_has_Pedido ppay ON ped.idPedido = ppay.Pedido_idPedido AND ped.Cliente_idCliente = ppay.Pedido_Cliente_idCliente
JOIN 
    mydb.Pagamentos pay ON ppay.Pagamentos_idPagamentos = pay.idPagamentos
WHERE 
    ped.Status = 2 -- Filtra apenas os pedidos finalizados
ORDER BY 
    Valor_Total DESC
LIMIT 10; -- Os 10 clientes que mais gastaram

