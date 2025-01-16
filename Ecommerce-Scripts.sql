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

