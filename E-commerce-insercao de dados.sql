-- Inserção de Dados para a Tabela Cliente
INSERT INTO `mydb`.`Cliente` 
(`Nome`, `CPF_CNPJ`, `Endereço`, `Tipo_Pessoa`, `Ativo`, `Obs`, `Aniversátio`, `Inclusao`) 
VALUES 
('João Silva', 12345678901, 'Rua A, 123', 1, 1, 'Nenhuma', '1990-05-15', '2025-01-15'), 
('Maria Souza', 98765432100, 'Avenida B, 456', 1, 1, 'Observação 1', '1985-08-25', '2025-01-15'), 
('Empresa X Ltda', 12345678000195, 'Rua C, 789', 2, 1, 'Cliente PJ', '2000-11-10', '2025-01-15'), 
('Carlos Pereira', 23456789012, 'Praça D, 123', 1, 1, 'Obs Carlos', '1982-02-10', '2025-01-15'), 
('Ana Costa', 34567890123, 'Avenida E, 1000', 1, 1, 'Nenhuma', '1995-07-20', '2025-01-15'), 
('Beta Ltda', 65432198000102, 'Rua F, 200', 0, 1, 'Obs Beta', '2010-12-30', '2025-01-15'), 
('Francisco Lima', 45678901234, 'Rua G, 405', 1, 1, 'Observação Francisco', '1988-09-05', '2025-01-15');


-- Inserção de Dados para a Tabela Produto
INSERT INTO `mydb`.`Produto` (`Nome`, `Categoria`, `Valor`, `Nota`, `Peso`, `Volume`) VALUES
('Produto A', 'Categoria 1', 50.0, 4.5, 2.0, 1.5),
('Produto B', 'Categoria 2', 120.0, 3.8, 3.5, 2.0),
('Produto C', 'Categoria 1', 30.0, 4.0, 1.0, 0.8),
('Produto D', 'Categoria 3', 75.0, 4.9, 4.0, 2.5),
('Produto E', 'Categoria 2', 200.0, 5.0, 5.5, 3.0),
('Produto F', 'Categoria 3', 100.0, 4.3, 2.3, 1.7),
('Produto G', 'Categoria 1', 40.0, 3.9, 1.8, 1.2);

-- Inserção de Dados para a Tabela Fornecedor
INSERT INTO `mydb`.`Fornecedor` (`Nome`, `CNPJ`, `Contato`, `Endereço`) VALUES
('Fornecedor A', 12345678000195, 'Contato A', 'Rua H, 300'),
('Fornecedor B', 23456789000123, 'Contato B', 'Rua I, 400'),
('Fornecedor C', 34567890000102, 'Contato C', 'Rua J, 500'),
('Fornecedor D', 45678901000154, 'Contato D', 'Rua K, 600'),
('Fornecedor E', 56789012000175, 'Contato E', 'Rua L, 700'),
('Fornecedor F', 67890123000186, 'Contato F', 'Rua M, 800'),
('Fornecedor G', 78901234000197, 'Contato G', 'Rua N, 900');

-- Inserção de Dados para a Tabela Terceiros_Vendedor
INSERT INTO `mydb`.`Terceiros_Vendedor` (`Razao Social`, `CNPJ`, `Local`, `Endereço`, `Contato`, `Tipo_Pessoa`) VALUES
('Vendedor A Ltda', 12345678000195, 'São Paulo', 'Rua O, 100', 'Contato A', 1),
('Vendedor B Ltda', 23456789000123, 'Rio de Janeiro', 'Rua P, 200', 'Contato B', 1),
('Vendedor C Ltda', 34567890000102, 'Belo Horizonte', 'Rua Q, 300', 'Contato C', 1),
('Vendedor D Ltda', 45678901000154, 'Curitiba', 'Rua R, 400', 'Contato D', 1),
('Vendedor E Ltda', 56789012000175, 'Porto Alegre', 'Rua S, 500', 'Contato E', 1),
('Vendedor F Ltda', 67890123000186, 'Salvador', 'Rua T, 600', 'Contato F', 1),
('Vendedor G Ltda', 78901234000197, 'Recife', 'Rua U, 700', 'Contato G', 1);

-- Inserção de Dados para a Tabela Produto_has_Fornecedor
INSERT INTO `mydb`.`Produto_has_Fornecedor` (`Produto_idProduto`, `Fornecedor_idFornecedor`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7);

-- Inserção de Dados para a Tabela Produto_has_Terceiros_Vendedor
INSERT INTO `mydb`.`Produto_has_Terceiros_Vendedor` (`Produto_idProduto`, `Terceiros_Vendedor_idTerceiros_Vendedor`, `Qtde`) VALUES
(1, 1, 100),
(2, 2, 200),
(3, 3, 300),
(4, 4, 400),
(5, 5, 500),
(6, 6, 600),
(7, 7, 700);

-- Inserção de Dados para a Tabela Estoque
INSERT INTO `mydb`.`Estoque` (`Local`, `Qtde`) VALUES
('Armazém 1', 500),
('Armazém 2', 1000),
('Armazém 3', 1500),
('Armazém 4', 200),
('Armazém 5', 300),
('Armazém 6', 400),
('Armazém 7', 600);

-- Inserção de Dados para a Tabela Produto_has_Estoque
INSERT INTO `mydb`.`Produto_has_Estoque` (`Produto_idProduto`, `Estoque_idEstoque`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7);

-- Inserção de Dados para a Tabela Pagamentos
INSERT INTO `mydb`.`Pagamentos` (`Tipo`, `Numero_Cartao`, `Nome_Cartao`, `Vencimento`, `Ativo`, `Descricao`, `Apelido`, `Data_Registro`, `CPF_Titular`) VALUES
(1, '1234567812345678', 'João Silva', '2025-02-01', 1, 'Pagamento cartão', 'João', '2025-01-15', 12345678901),
(2, NULL, NULL, '2025-03-01', 1, 'Pagamento boleto', 'Maria', '2025-01-15', 98765432100),
(3, NULL, NULL, '2025-04-01', 1, 'Pagamento débito', 'Carlos', '2025-01-15', 23456789012),
(4, NULL, NULL, '2025-05-01', 1, 'Pagamento pix', 'Ana', '2025-01-15', 34567890123),
(5, NULL, NULL, '2025-06-01', 1, 'Pagamento depósito', 'Beta', '2025-01-15', 65432198000102),
(6, NULL, NULL, '2025-07-01', 1, 'Pagamento transferência', 'Francisco', '2025-01-15', 45678901234),
(1, '2345678923456789', 'Maria Souza', '2025-08-01', 1, 'Pagamento cartão', 'Maria', '2025-01-15', 98765432100);

-- Inserção de Dados para a Tabela Cliente_has_Pagamentos
INSERT INTO `mydb`.`Cliente_has_Pagamentos` (`Cliente_idCliente`, `Pagamentos_idPagamentos`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7);

-- Inserção de Dados para a Tabela Pedido
INSERT INTO `mydb`.`Pedido` (`Cliente_idCliente`, `Ativo`, `Descrição`, `Frete`, `LocalEntrega`) VALUES
(1, 1, 'Pedido 1', 10.0, 'Endereço 1'),
(2, 2, 'Pedido 2', 20.0, 'Endereço 2'),
(3, 1, 'Pedido 3', 30.0, 'Endereço 3'),
(4, 2, 'Pedido 4', 40.0, 'Endereço 4'),
(5, 1, 'Pedido 5', 50.0, 'Endereço 5'),
(6, 2, 'Pedido 6', 60.0, 'Endereço 6'),
(7, 1, 'Pedido 7', 70.0, 'Endereço 7');

-- Inserção de Dados para a Tabela Pedido_has_Produto
INSERT INTO `mydb`.`Pedido_has_Produto` (`Pedido_idPedido`, `Pedido_Cliente_idCliente`, `Produto_idProduto`, `Qtde`, `Rastreio`) VALUES
(1, 1, 1, 10, 'ABC123'),
(2, 2, 2, 20, 'DEF456'),
(3, 3, 3, 30, 'GHI789'),
(4, 4, 4, 40, 'JKL012'),
(5, 5, 5, 50, 'MNO345'),
(6, 6, 6, 60, 'PQR678'),
(7, 7, 7, 70, 'STU901');

-- Inserção de Dados para a Tabela Pagamentos_has_Pedido
INSERT INTO `mydb`.`Pagamentos_has_Pedido` (`Pagamentos_idPagamentos`, `Pedido_idPedido`, `Pedido_Cliente_idCliente`, `Ativo`) VALUES
(1, 1, 1, 1),
(2, 2, 2, 2),
(3, 3, 3, 3),
(4, 4, 4, 4),
(5, 5, 5, 5),
(6, 6, 6, 1),
(7, 7, 7, 2);
