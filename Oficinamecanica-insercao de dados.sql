-- Tabela Clientes 
INSERT INTO `Cliemtes` (`CPF`, `NomeCompleto`, `Endereco`, `Obs`, `Aniversario`, `Ativo`)
VALUES
(12345678901, 'Carlos Silva', 'Rua das Flores, 123', 'Cliente regular', '1980-05-15', 1),
(23456789012, 'Ana Oliveira', 'Avenida Brasil, 456', 'Primeira compra recente', '1990-07-20', 1),
(34567890123, 'João Santos', 'Praça Central, 789', NULL, '1985-03-10', 0),
(45678901234, 'Mariana Souza', 'Rua do Sol, 101', 'Prefere contato via WhatsApp', '1995-12-01', 1),
(56789012345, 'Paulo Lima', 'Avenida Paulista, 202', 'Cliente fiel', '1983-08-25', 1),
(67890123456, 'Fernanda Costa', 'Travessa das Palmeiras, 303', NULL, '1992-06-05', 1),
(78901234567, 'Pedro Almeida', 'Rua dos Pinheiros, 404', 'Reclamou do último serviço', '1987-10-10', 0),
(89012345678, 'Juliana Pereira', 'Avenida do Estado, 505', NULL, '1993-11-30', 1),
(90123456789, 'Thiago Rocha', 'Estrada Velha, 606', 'Cliente antigo', '1981-04-22', 1),
(11234567890, 'Gabriela Ribeiro', 'Alameda das Rosas, 707', NULL, '1990-09-15', 1),
(22345678901, 'Ricardo Fernandes', 'Condomínio Vista Alegre, 808', NULL, '1984-02-05', 0),
(33456789012, 'Luana Martins', 'Vila Nova, 909', 'Recomendou amigos', '1991-01-18', 1),
(44567890123, 'Roberto Carvalho', 'Rua das Acácias, 1010', NULL, '1986-07-12', 1),
(55678901234, 'Camila Barros', 'Avenida do Lago, 1111', NULL, '1994-03-22', 1);

-- Tabela Veiculos
INSERT INTO `Veiculos` (`Cliemtes_idCliemtes`, `Marca`, `Modelo`, `Ano`, `Cor`, `Placa`, `Chassi`, `Ativo`, `Datarevisao`, `DataConserto`)
VALUES
(1, 'Toyota', 'Corolla', 2020, 'Prata', 'ABC1', 'CHS1234567', 1, '2023-01-15', '2023-02-10'),
(2, 'Honda', 'Civic', 2019, 'Preto', 'DEF2', 'CHS2345678', 1, '2023-03-12', '2023-04-15'),
(3, 'Ford', 'Fiesta', 2018, 'Branco', 'GHI3', 'CHS3456789', 0, '2023-05-10', '2023-06-18'),
(4, 'Chevrolet', 'Onix', 2021, 'Azul', 'JKL4', 'CHS4567890', 1, '2023-07-20', '2023-08-22'),
(5, 'Volkswagen', 'Golf', 2020, 'Vermelho', 'MNO5', 'CHS5678901', 1, '2023-09-05', '2023-10-12'),
(6, 'Hyundai', 'HB20', 2022, 'Cinza', 'PQR6', 'CHS6789012', 1, '2023-11-10', NULL),
(7, 'Renault', 'Duster', 2019, 'Verde', 'STU7', 'CHS7890123', 0, '2023-12-01', NULL),
(8, 'Fiat', 'Argo', 2021, 'Branco', 'VWX8', 'CHS8901234', 1, NULL, NULL),
(9, 'Jeep', 'Compass', 2023, 'Preto', 'YZA9', 'CHS9012345', 1, NULL, NULL),
(10, 'Nissan', 'Kicks', 2020, 'Azul', 'BCD0', 'CHS0123456', 1, NULL, NULL),
(11, 'Peugeot', '208', 2022, 'Amarelo', 'EFG1', 'CHS1234568', 1, NULL, NULL),
(12, 'Citroën', 'C4', 2019, 'Vermelho', 'HIJ2', 'CHS2345679', 1, NULL, NULL),
(13, 'BMW', 'X1', 2023, 'Prata', 'KLM3', 'CHS3456780', 1, NULL, NULL),
(14, 'Mercedes', 'GLA', 2021, 'Preto', 'NOP4', 'CHS4567891', 1, NULL, NULL);

-- Tabela Mecanicos
INSERT INTO `Mecanicos` (`Nome`, `Matricula`, `Admissao`, `Nascimento`)
VALUES
('Lucas Amaral', 'M001', '2020-02-15 08:30:00', '1985-03-12'),
('Sofia Medeiros', 'M002', '2019-05-10 09:00:00', '1990-08-20'),
('Miguel Nascimento', 'M003', '2021-01-20 10:15:00', '1983-06-18'),
('Alice Cardoso', 'M004', '2022-03-25 07:45:00', '1992-11-02'),
('Gabriel Souza', 'M005', '2020-09-10 11:00:00', '1988-12-24'),
('Julia Fernandes', 'M006', '2018-11-01 06:50:00', '1991-05-30'),
('Rafael Pereira', 'M007', '2023-04-12 09:30:00', '1987-01-15'),
('Beatriz Costa', 'M008', '2021-07-08 08:00:00', '1993-09-09'),
('Henrique Alves', 'M009', '2019-12-15 07:00:00', '1984-02-28'),
('Mariana Santos', 'M010', '2023-06-05 10:45:00', '1990-07-14'),
('Leonardo Rocha', 'M011', '2020-01-22 09:10:00', '1986-04-10'),
('Camila Ramos', 'M012', '2018-03-18 08:25:00', '1992-12-11'),
('Felipe Duarte', 'M013', '2019-09-09 07:55:00', '1989-10-05'),
('Ana Clara Borges', 'M014', '2022-11-15 06:40:00', '1991-03-28');

-- Tabela Equipe
INSERT INTO `Equipe` (`Mecanicos_idMecanicos`)
VALUES
(1), (2), (3), (4), (5), (6), (7), (8), (9), (10), (11), (12), (13), (14);


-- Tabela Peças 
INSERT INTO `Pecas` (`Descricao`, `Partnumber`)
VALUES
('Filtro de óleo', 'P001'),
('Correia dentada', 'P002'),
('Bateria 60Ah', 'P003'),
('Pastilhas de freio', 'P004'),
('Velas de ignição', 'P005'),
('Radiador', 'P006'),
('Amortecedor', 'P007'),
('Pneus 185/65R15', 'P008'),
('Filtro de ar', 'P009'),
('Jogo de cabos', 'P010'),
('Disco de freio', 'P011'),
('Sensor de estacionamento', 'P012'),
('Kit embreagem', 'P013'),
('Motor de partida', 'P014');

-- Tabela Estoque 
INSERT INTO `Estoque` (`Local`, `Obs`, `Qtde`)
VALUES
('Depósito Central', 'Área climatizada', 50),
('Depósito Secundário', 'Sem climatização', 30),
('Loja A', 'Exposição', 20),
('Loja B', 'Exposição', 15),
('Loja C', 'Exposição', 25),
('Depósito Central', 'Peças especiais', 10),
('Depósito Central', 'Alta demanda', 60),
('Depósito Secundário', 'Peças pesadas', 35),
('Loja A', 'Itens promocionais', 10),
('Loja B', 'Acessórios', 12),
('Loja C', 'Pneus', 8),
('Depósito Central', 'Componentes elétricos', 40),
('Depósito Secundário', 'Ferramentas', 18),
('Loja A', 'Peças pequenas', 22);

-- Tabela Servicos
INSERT INTO `Servicos` (`Descricao`, `Valor`, `Obs`)
VALUES
  ('Revisão geral', 100.00, 'Revisão completa do veículo'),
  ('Alinhamento e balanceamento', 80.00, 'Ajuste das rodas para evitar desgaste irregular dos pneus'),
  ('Pintura automotiva', 500.00, 'Pintura de retoque ou troca de cor do veículo'),
  ('Suspensão e amortecedores', 250.00, 'Troca de peças de suspensão para melhorar a dirigibilidade'),
  ('Troca de pneus', 300.00, 'Substituição dos pneus do veículo'),
  ('Manutenção elétrica', 150.00, 'Verificação e reparo de sistema elétrico do carro'),
  ('Freios e discos', 120.00, 'Substituição de pastilhas e discos de freio'),
  ('Ar condicionado', 200.00, 'Reparo e recarga de gás do ar condicionado'),
  ('Troca de bateria', 180.00, 'Substituição da bateria do carro'),
  ('Faróis e iluminação', 90.00, 'Troca de lâmpadas ou reparo do sistema de iluminação'),
  ('Diagnóstico eletrônico', 130.00, 'Verificação de falhas eletrônicas no veículo'),
  ('Substituição de correias', 140.00, 'Troca de correias do motor e acessórios'),
  ('Reparo de motor', 1000.00, 'Reparo completo do motor do veículo'),
  ('Troca de óleo', 50.00, 'Substituição do óleo do motor e filtro');

-- Tebela OS
INSERT INTO `OS` (`DataOS`, `Entrega`, `Ativo`, `TipoConserto`, `Dataprevista`, `Equipe_idEquipe`, `Equipe_Mecanicos_idMecanicos`)
VALUES
('2023-01-10', '2023-01-20', 1, 'Troca de óleo', '2023-01-18', 1, 1),
('2023-02-15', '2023-02-25', 1, 'Revisão geral', '2023-02-23', 2, 2),
('2023-03-05', '2023-03-15', 1, 'Alinhamento', '2023-03-13', 3, 3),
('2023-04-10', '2023-04-20', 0, 'Pintura', '2023-04-18', 4, 4),
('2023-05-20', '2023-05-30', 1, 'Suspensão', '2023-05-28', 5, 5),
('2023-06-25', '2023-07-05', 1, 'Troca de pneus', '2023-07-03', 6, 6),
('2023-07-15', '2023-07-25', 0, 'Manutenção elétrica', '2023-07-23', 7, 7),
('2023-08-10', '2023-08-20', 1, 'Freios', '2023-08-18', 8, 8),
('2023-09-05', '2023-09-15', 1, 'Ar condicionado', '2023-09-13', 9, 9),
('2023-10-10', '2023-10-20', 1, 'Troca de bateria', '2023-10-18', 10, 10),
('2023-11-15', '2023-11-25', 1, 'Faróis', '2023-11-23', 11, 11),
('2023-12-01', '2023-12-11', 1, 'Troca de óleo', '2023-12-09', 12, 12),
('2024-01-05', '2024-01-15', 1, 'Revisão geral', '2024-01-13', 13, 13),
('2024-02-10', '2024-02-20', 1, 'Manutenção elétrica', '2024-02-18', 14, 14);

 -- Tabela Veiculos_has_OS
INSERT INTO `Veiculos_has_OS` (`Veiculos_idVeiculos`, `Veiculos_Cliemtes_idCliemtes`, `OS_idOS`)
VALUES
(1, 1, 1), (2, 2, 2), (3, 3, 3), (4, 4, 4), (5, 5, 5),
(6, 6, 6), (7, 7, 7), (8, 8, 8), (9, 9, 9), (10, 10, 10),
(11, 11, 11), (12, 12, 12), (13, 13, 13), (14, 14, 14);

-- Tabela Servicos_has_OS
INSERT INTO `Servicos_has_OS` (`Servicos_idServicos`, `OS_idOS`, `QtdeServico`, `Total`)
VALUES
(1, 1,2,80), (2, 2,3,99), (3, 3,1,35), (4, 4, 2, 50), (5, 5,2,100),
(6, 6,1,150), (7, 7,1,101), (8, 8,1,90), (9, 9,5,250), (10, 10,1,125),
(11, 11,1,180), (12, 12,7,350), (13, 13,3,220), (14, 14,3,150);

-- Pecas_has_OS
INSERT INTO `Pecas_has_OS` (`Pecas_idPecas`, `OS_idOS`, `QtdePecas`, `Total`)
VALUES
(1, 1, 2, 150), (2, 2, 1, 350), (3, 3, 1, 190), (4, 4, 4, 230), (5, 5, 8, 330),
(6, 6, 2, 440), (7, 7, 6, 201), (8, 8, 4, 378), (9, 9, 5, 401), (10, 10, 3, 150),
(11, 11, 2, 250), (12, 12, 1, 500), (13, 13, 2, 777), (14, 14, 1, 140);

-- Especialidades
INSERT INTO `Especialidades` (`Descricao`)
VALUES 
('Revisão geral'),
('Alinhamento e balanceamento'),
('Pintura automotiva'),
('Suspensão e amortecedores'),
('Troca de pneus'),
('Manutenção elétrica'),
('Freios e discos'),
('Ar condicionado'),
('Troca de bateria'),
('Faróis e iluminação'),
('Diagnóstico eletrônico'),
('Substituição de correias'),
('Reparo de motor'),
('Eletrônica automotiva');

-- Estoque x PEcas 
INSERT INTO `Pecas_has_Estoque` (`Pecas_idPecas`, `Estoque_idEstoque`)
VALUES
(1, 1),  -- idPecas 1, idEstoque 1
(2, 2),  -- idPecas 2, idEstoque 2
(3, 3),  -- idPecas 3, idEstoque 3
(4, 4),  -- idPecas 4, idEstoque 4
(5, 5),  -- idPecas 5, idEstoque 5
(6, 6),  -- idPecas 6, idEstoque 6
(7, 7),  -- idPecas 7, idEstoque 7
(8, 8),  -- idPecas 8, idEstoque 8
(9, 9),  -- idPecas 9, idEstoque 9
(10, 10), -- idPecas 10, idEstoque 10
(11, 11), -- idPecas 11, idEstoque 11
(12, 12), -- idPecas 12, idEstoque 12
(13, 13), -- idPecas 13, idEstoque 13
(14, 14); -- idPecas 14, idEstoque 14

-- Mecanico x Especialidades 
INSERT INTO `Mecanicos_has_Especialidades` (`Mecanicos_idMecanicos`, `Especialidades_idEspecialidades`)
VALUES
(1, 1), -- Mecânico 1 possui especialidade 1
(1, 2), -- Mecânico 1 possui especialidade 2
(2, 3), -- Mecânico 2 possui especialidade 3
(2, 4), -- Mecânico 2 possui especialidade 4
(3, 5), -- Mecânico 3 possui especialidade 5
(3, 6), -- Mecânico 3 possui especialidade 6
(4, 7), -- Mecânico 4 possui especialidade 7
(4, 8), -- Mecânico 4 possui especialidade 8
(5, 9), -- Mecânico 5 possui especialidade 9
(5, 10), -- Mecânico 5 possui especialidade 10
(6, 11), -- Mecânico 6 possui especialidade 11
(6, 12), -- Mecânico 6 possui especialidade 12
(7, 13), -- Mecânico 7 possui especialidade 13
(7, 14); -- Mecânico 7 possui especialidade 14


