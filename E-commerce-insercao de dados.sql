-- Inserção de registros na tabela Cliente
INSERT INTO `mydb`.`Cliente` (`Nome`, `CPF-CNPJ`, `Endereço`, `Aniversátio`, `Inclusao`, `Obs`) VALUES
('Empresa A', 12345678901234, 'Rua A, 123', '1990-01-15', '2025-01-15', 'Primeiro cliente'),
('João Silva', 12345678901, 'Rua B, 456', '1985-02-20', '2025-01-15', NULL),
('Empresa B', 23456789012345, 'Av. C, 789', '1995-03-25', '2025-01-15', 'Cliente importante'),
('Maria Clara', 23456789012, 'Rua D, 1011', '1998-04-10', '2025-01-15', NULL),
('Empresa C', 34567890123456, 'Av. E, 1213', '1992-05-05', '2025-01-15', 'Observação qualquer'),
('Paulo Lima', 34567890123, 'Rua F, 1415', '1980-06-12', '2025-01-15', NULL),
('Empresa D', 45678901234567, 'Av. G, 1617', '1988-07-18', '2025-01-15', 'Novo cliente');

-- Inserção de registros na tabela Produto
INSERT INTO `mydb`.`Produto` (`Nome`, `Categoria`, `Valor`, `Nota`, `Peso`, `Volume`) VALUES
('Produto A', 'Categoria 1', 10.5, 4.5, 0.8, 0.2),
('Produto B', 'Categoria 2', 25.0, 3.8, 1.2, 0.5),
('Produto C', 'Categoria 3', 15.0, 4.0, 1.5, 0.3),
('Produto D', 'Categoria 4', 50.0, 5.0, 2.0, 1.0),
('Produto E', 'Categoria 1', 30.0, 3.5, 0.9, 0.4),
('Produto F', 'Categoria 2', 12.5, 4.2, 1.1, 0.6),
('Produto G', 'Categoria 3', 45.0, 4.7, 1.8, 0.9);

-- Inserção de registros na tabela Pedido
INSERT INTO `mydb`.`Pedido` (`Cliente_idCliente`, `Status`, `Descrição`, `Frete`, `LocalEntrega`) VALUES
(1, 1, 'Primeira entrega', 15.0, 'Rua Z, 123'),
(2, 2, 'Pedido finalizado', 20.0, 'Rua X, 456'),
(3, 1, 'Em andamento', 12.5, 'Rua Y, 789'),
(4, 3, 'Cancelado', 0.0, 'Rua W, 101'),
(5, 5, 'Em entrega', 18.0, 'Rua V, 121'),
(6, 4, 'Devolução', 10.0, 'Rua U, 141'),
(7, 2, 'Concluído', 25.0, 'Rua T, 161');

-- Inserção de registros na tabela Fornecedor
INSERT INTO `mydb`.`Fornecedor` (`Nome`, `CNPJ`, `Contato`, `Endereço`) VALUES
('Fornecedor A', 12345678901234, 'contato@fornecedora.com', 'Rua F1, 123'),
('Fornecedor B', 23456789012345, 'contato@fornecedorb.com', 'Av. F2, 456'),
('Fornecedor C', 34567890123456, 'contato@fornecedorc.com', 'Rua F3, 789'),
('Fornecedor D', 45678901234567, 'contato@fornecedord.com', 'Av. F4, 101'),
('Fornecedor E', 56789012345678, 'contato@fornecedore.com', 'Rua F5, 121'),
('Fornecedor F', 67890123456789, 'contato@fornecedorf.com', 'Av. F6, 141'),
('Fornecedor G', 78901234567890, 'contato@fornecedorg.com', 'Rua F7, 161');

-- Inserção de registros na tabela Estoque
INSERT INTO `mydb`.`Estoque` (`Local`, `Qtde`) VALUES
('Depósito A', 100),
('Depósito B', 200),
('Depósito C', 300),
('Depósito D', 400),
('Depósito E', 150),
('Depósito F', 250),
('Depósito G', 350);

-- Inserção de registros na tabela Pagamentos
INSERT INTO `mydb`.`Pagamentos` (`Tipo`, `Numero Cartao`, `Nome Cartao`, `Vencimento`, `Status`, `Descricao`, `Apelido`, `Data Registro`, `CPF Titular`) VALUES
(1, '1234-5678-9012-3456', 'João Silva', '2026-01-15', 1, 'Pagamento de teste', 'Cartão João', '2025-01-15', 12345678901),
(2, NULL, NULL, NULL, 1, 'Boleto pago', NULL, '2025-01-15', NULL),
(3, '2345-6789-0123-4567', 'Maria Clara', '2025-12-31', 2, 'Débito recusado', 'Cartão Maria', '2025-01-15', 23456789012),
(4, NULL, NULL, NULL, 1, 'Pagamento via Pix', NULL, '2025-01-15', NULL),
(5, NULL, NULL, NULL, 3, 'Depósito estornado', NULL, '2025-01-15', NULL),
(6, '3456-7890-1234-5678', 'Paulo Lima', '2026-06-30', 1, 'Pagamento aprovado', 'Cartão Paulo', '2025-01-15', 34567890123),
(1, '4567-8901-2345-6789', 'Empresa D', '2027-01-01', 1, 'Pagamento teste', 'Cartão Empresa D', '2025-01-15', 45678901234567);
