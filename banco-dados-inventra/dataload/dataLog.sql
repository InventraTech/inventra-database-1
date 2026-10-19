-----------------------------------------------------------------------------------------------------------
-- SETOR
-----------------------------------------------------------------------------------------------------------
INSERT INTO Setor (nome, descricao) VALUES
('Cozinha', 'Setor responsável pelo preparo dos pratos e uso diário de insumos'),
('Estoque', 'Setor de armazenamento, controle e conferência de mercadorias'),
('Compras', 'Setor responsável pela aquisição de produtos e negociação com fornecedores'),
('Administrativo', 'Setor de gestão administrativa geral da unidade'),
('Financeiro', 'Setor de controle de pagamentos, custos e faturamento'),
('Salão', 'Setor de atendimento e serviço ao cliente');
select * from setor

-----------------------------------------------------------------------------------------------------------
-- MARCA
-----------------------------------------------------------------------------------------------------------
INSERT INTO Marca (nome) VALUES
('Sadia'),
('Perdigão'),
('Friboi'),
('Seara'),
('Camil'),
('Tio João'),
('União'),
('Nestlé'),
('Coca-Cola'),
('Bunge'),
('Qualitá'),
('Swift');
SELECT * FROM marca


-----------------------------------------------------------------------------------------------------------
-- CATEGORIA
-----------------------------------------------------------------------------------------------------------
INSERT INTO Categoria (nome, descricao) VALUES
('Carnes', 'Produtos cárneos in natura e processados'),
('Laticínios', 'Leite, queijos, iogurtes e derivados'),
('Grãos e Cereais', 'Arroz, feijão, grãos e farináceos em geral'),
('Bebidas', 'Bebidas alcoólicas e não alcoólicas'),
('Temperos e Condimentos', 'Especiarias, molhos e condimentos diversos'),
('Hortifruti', 'Frutas, legumes e verduras frescas'),
('Descartáveis', 'Embalagens, guardanapos e materiais descartáveis'),
('Limpeza', 'Produtos de higienização e limpeza geral');
SELECT * FROM Categoria

-----------------------------------------------------------------------------------------------------------
-- REGIAO
-----------------------------------------------------------------------------------------------------------
INSERT INTO Regiao (estado, cidade, cep) VALUES
('SP', 'São Paulo', '01310-100'),
('SP', 'Campinas', '13010-000'),
('RJ', 'Rio de Janeiro', '20040-020'),
('MG', 'Belo Horizonte', '30130-000'),
('RS', 'Porto Alegre', '90010-000'),
('PR', 'Curitiba', '80010-000'),
('SC', 'Florianópolis', '88010-000'),
('BA', 'Salvador', '40010-000'),
('GO', 'Goiânia', '74010-000'),
('PE', 'Recife', '50010-000');
SELECT * FROM Regiao

-----------------------------------------------------------------------------------------------------------
-- TIPO_REQUISICAO
-----------------------------------------------------------------------------------------------------------
INSERT INTO Tipo_Requisicao (tipo) VALUES
('Entrada'),
('Saída'),
('Transferência'),
('Devolução'),
('Descarte');

-----------------------------------------------------------------------------------------------------------
-- FORNECEDOR (12 fornecedores)
-----------------------------------------------------------------------------------------------------------
INSERT INTO Fornecedor (nome_juridico, cnpj, email, telefone, nota_vpq, fk_regiao) VALUES
('Distribuidora Boa Mesa Ltda', '12345678000190', 'contato@boamesa.com.br', '11987654321', 9, 1),
('Atacado Central de Alimentos SA', '23456789000191', 'vendas@atacadocentral.com.br', '19987654322', 8, 2),
('Carnes Premium Distribuidora', '34567890000192', 'comercial@carnespremium.com.br', '21987654323', 7, 3),
('Hortifruti Frescor Ltda', '45678901000193', 'pedidos@frescorhorti.com.br', '31987654324', 9, 4),
('Bebidas & Cia Distribuidora', '56789012000194', 'vendas@bebidasecia.com.br', '51987654325', 6, 5),
('Laticínios do Sul Ltda', '67890123000195', 'contato@laticiniosdosul.com.br', '41987654326', 8, 6),
('Embalagens Sustentáveis SA', '78901234000196', 'comercial@embalasust.com.br', '48987654327', 7, 7),
('Grãos e Cereais Nordeste Ltda', '89012345000197', 'vendas@graosnordeste.com.br', '71987654328', 5, 8),
('Distribuidora Central Goiás', '90123456000198', 'contato@centralgoias.com.br', '62987654329', 6, 9),
('Frigorífico Pernambuco Ltda', '01234567000199', 'comercial@frigope.com.br', '81987654330', 9, 10),
('Química Limpa Distribuidora', '11223344000155', 'vendas@quimicalimpa.com.br', '11987651111', 4, 1),
('Importadora Sabor & Arte SA', '22334455000166', 'contato@saborearte.com.br', '19987652222', 8, 2);

-----------------------------------------------------------------------------------------------------------
-- FUNCIONARIO (12 funcionários)
------------------------------------------------------------------------------------------------------------
INSERT INTO Funcionario (nome, senha, fk_setor, email, telefone, cpf, dt_admissao, status) VALUES
('Ana Paula Souza', '$2b$10$hashsenha0001exemplo', 1, 'ana.souza@restaurante.com', '11912345671', '11122233344', '2021-03-15', 'Ativo'),
('Bruno Carvalho', '$2b$10$hashsenha0002exemplo', 2, 'bruno.carvalho@restaurante.com', '11912345672', '22233344455', '2020-07-01', 'Ativo'),
('Carla Mendes', '$2b$10$hashsenha0003exemplo', 3, 'carla.mendes@restaurante.com', '11912345673', '33344455566', '2022-01-10', 'Ativo'),
('Diego Ferreira', '$2b$10$hashsenha0004exemplo', 2, 'diego.ferreira@restaurante.com', '11912345674', '44455566677', '2019-11-20', 'Ativo'),
('Elaine Rodrigues', '$2b$10$hashsenha0005exemplo', 4, 'elaine.rodrigues@restaurante.com', '11912345675', '55566677788', '2018-05-05', 'Ativo'),
('Fábio Lima', '$2b$10$hashsenha0006exemplo', 5, 'fabio.lima@restaurante.com', '11912345676', '66677788899', '2021-09-12', 'Ativo'),
('Gabriela Torres', '$2b$10$hashsenha0007exemplo', 1, 'gabriela.torres@restaurante.com', '11912345677', '77788899900', '2023-02-28', 'Ativo'),
('Henrique Alves', '$2b$10$hashsenha0008exemplo', 2, 'henrique.alves@restaurante.com', '11912345678', '88899900011', '2022-06-18', 'Ativo'),
('Isabela Martins', '$2b$10$hashsenha0009exemplo', 6, 'isabela.martins@restaurante.com', '11912345679', '99900011122', '2020-10-03', 'Ativo'),
('João Pedro Nunes', '$2b$10$hashsenha0010exemplo', 3, 'joao.nunes@restaurante.com', '11912345680', '10011122233', '2019-04-22', 'Inativo'),
('Karina Barbosa', '$2b$10$hashsenha0011exemplo', 1, 'karina.barbosa@restaurante.com', '11912345681', '12112233344', '2023-08-14', 'Ativo'),
('Lucas Pereira', '$2b$10$hashsenha0012exemplo', 2, 'lucas.pereira@restaurante.com', NULL, '13122334455', '2024-01-09', 'Ativo');
SELECT * FROM funcionario

-- ============================
-- PRODUTO (18 produtos)
-- ============================
INSERT INTO Produto (nome, fk_marca, fk_categoria, unidade_medida, estoque_min, estoque_max, fk_fornecedor, descricao, ativo) VALUES
('Filé de Frango Congelado', 1, 1, 'KG', 20, 200, 3, 'Filé de peito de frango congelado, embalagem de 1kg', true),
('Picanha Bovina', 3, 1, 'KG', 10, 100, 10, 'Corte nobre de picanha bovina resfriada', true),
('Linguiça Toscana', 2, 1, 'KG', 15, 120, 3, 'Linguiça toscana suína temperada', true),
('Queijo Mussarela', 6, 2, 'KG', 10, 80, 6, 'Queijo mussarela fatiado para lanches', true),
('Leite Integral', 8, 2, 'L', 30, 300, 6, 'Leite integral UHT, caixa de 1 litro', true),
('Arroz Branco Tipo 1', 6, 3, 'KG', 50, 500, 8, 'Arroz branco tipo 1, pacote de 5kg', true),
('Feijão Carioca', 7, 3, 'KG', 30, 250, 8, 'Feijão carioca tipo 1, pacote de 1kg', true),
('Refrigerante Cola 2L', 9, 4, 'UN', 24, 200, 5, 'Refrigerante sabor cola, garrafa de 2 litros', true),
('Cerveja Pilsen Lata', 9, 4, 'UN', 48, 400, 5, 'Cerveja pilsen, lata de 350ml, fardo com 12', true),
('Azeite de Oliva Extra Virgem', 11, 5, 'L', 10, 60, 12, 'Azeite de oliva extra virgem importado 500ml', true),
('Sal Refinado', 7, 5, 'KG', 20, 150, 8, 'Sal refinado iodado, pacote de 1kg', true),
('Tomate Fresco', 11, 6, 'KG', 15, 100, 4, 'Tomate salada fresco, caixa de 20kg', true),
('Alface Crespa', 11, 6, 'UN', 20, 150, 4, 'Alface crespa fresca, unidade', true),
('Cebola Amarela', 11, 6, 'KG', 20, 150, 4, 'Cebola amarela fresca, saco de 20kg', true),
('Embalagem Descartável para Marmita', 7, 7, 'UN', 100, 2000, 7, 'Embalagem de isopor para marmitex, pacote com 100 un', true),
('Guardanapo de Papel', 7, 7, 'UN', 50, 1000, 7, 'Guardanapo de papel folha simples, pacote com 50', true),
('Detergente Neutro', 11, 8, 'L', 10, 100, 11, 'Detergente neutro concentrado, galão de 5 litros', true),
('Água Sanitária', 11, 8, 'L', 10, 100, 11, 'Água sanitária, galão de 5 litros', false);
SELECT * FROM produto

-- ============================
-- LOTE (25 lotes)
-- ============================
INSERT INTO Lote (fk_produto, numero_lote, qtd_inicial, qtd_atual, dt_entrada, dt_validade, valor_compra, nota_fiscal) VALUES
(1, 'LT-FRG-2026-001', 100, 65, '2026-06-10', '2026-12-10', 8.90, 'NF-100234'),
(1, 'LT-FRG-2026-002', 80, 80, '2026-07-20', '2027-01-20', 9.10, 'NF-100455'),
(2, 'LT-PIC-2026-001', 40, 12, '2026-07-01', '2026-08-15', 42.50, 'NF-100236'),
(3, 'LT-LNG-2026-001', 60, 30, '2026-06-25', '2026-09-25', 18.30, 'NF-100238'),
(4, 'LT-MUS-2026-001', 50, 22, '2026-07-05', '2026-10-05', 24.00, 'NF-100240'),
(5, 'LT-LEI-2026-001', 200, 90, '2026-07-15', '2026-11-15', 4.50, 'NF-100242'),
(5, 'LT-LEI-2026-002', 150, 150, '2026-08-01', '2026-12-01', 4.60, 'NF-100501'),
(6, 'LT-ARZ-2026-001', 300, 180, '2026-06-01', '2027-06-01', 22.00, 'NF-100244'),
(7, 'LT-FEI-2026-001', 200, 95, '2026-06-05', '2027-06-05', 7.80, 'NF-100246'),
(8, 'LT-REF-2026-001', 150, 60, '2026-07-10', '2027-01-10', 6.20, 'NF-100248'),
(9, 'LT-CEV-2026-001', 300, 140, '2026-07-12', '2027-01-12', 3.10, 'NF-100250'),
(10, 'LT-AZE-2026-001', 40, 18, '2026-06-20', '2027-06-20', 32.00, 'NF-100252'),
(11, 'LT-SAL-2026-001', 100, 70, '2026-05-15', '2028-05-15', 2.50, 'NF-100254'),
(12, 'LT-TOM-2026-001', 60, 8, '2026-07-28', '2026-08-10', 5.40, 'NF-100256'),
(13, 'LT-ALF-2026-001', 80, 10, '2026-07-30', '2026-08-08', 1.80, 'NF-100258'),
(14, 'LT-CEB-2026-001', 100, 40, '2026-07-18', '2026-09-18', 3.90, 'NF-100260'),
(15, 'LT-EMB-2026-001', 1000, 620, '2026-06-15', '2027-12-15', 45.00, 'NF-100262'),
(16, 'LT-GUA-2026-001', 800, 300, '2026-06-15', '2027-12-15', 12.00, 'NF-100264'),
(17, 'LT-DET-2026-001', 60, 25, '2026-06-30', '2027-06-30', 15.50, 'NF-100266'),
(18, 'LT-AGS-2026-001', 50, 5, '2026-05-10', '2026-11-10', 9.90, 'NF-100268'),
(2, 'LT-PIC-2026-002', 30, 30, '2026-08-02', '2026-09-15', 44.00, 'NF-100510'),
(3, 'LT-LNG-2026-002', 45, 45, '2026-08-03', '2026-11-03', 18.80, 'NF-100512'),
(6, 'LT-ARZ-2026-002', 250, 250, '2026-08-01', '2027-08-01', 22.50, 'NF-100514'),
(7, 'LT-FEI-2026-002', 180, 180, '2026-08-01', '2027-08-01', 8.00, 'NF-100516'),
(9, 'LT-CEV-2026-002', 250, 250, '2026-08-04', '2027-02-04', 3.20, 'NF-100518');
SELECT * FROM lote
-----------------------------------------------------------------------------------------------------------
-- PRE_LISTA (10 pré-listas de compra)
-----------------------------------------------------------------------------------------------------------
INSERT INTO Pre_lista (fk_produto, fk_fornecedor, dt_lista) VALUES
(1, 3, '2026-08-01'),
(2, 10, '2026-08-02'),
(6, 8, '2026-08-01'),
(7, 8, '2026-08-01'),
(9, 5, '2026-08-03'),
(12, 4, '2026-08-04'),
(13, 4, '2026-08-04'),
(15, 7, '2026-08-02'),
(18, 11, '2026-08-05'),
(10, 12, '2026-08-05');
SELECT * FROM pre_lista

-----------------------------------------------------------------------------------------------------------
-- ITEM_PRE_LISTA (18 itens)
-----------------------------------------------------------------------------------------------------------
INSERT INTO Item_pre_lista (fk_pre_lista, fk_fornecedor, fk_produto, qtd) VALUES
(1, 3, 1, 100),
(2, 10, 2, 40),
(3, 8, 6, 250),
(4, 8, 7, 150),
(5, 5, 9, 200),
(6, 4, 12, 50),
(7, 4, 13, 60),
(8, 7, 15, 500),
(9, 11, 18, 50),
(10, 12, 10, 30),
(1, 3, 3, 40),
(2, 10, 2, 20),
(3, 8, 6, 100),
(5, 5, 8, 100),
(6, 4, 14, 80),
(8, 7, 16, 400),
(9, 11, 17, 40),
(4, 8, 7, 60);
SELECT * FROM item_pre_lista

-----------------------------------------------------------------------------------------------------------
-- REQUISICOES (18 requisições)
-----------------------------------------------------------------------------------------------------------
INSERT INTO Requisicao (id_tipoRequisicao, quantidade_prod, motivo, status, dt_requisicao, fk_funcionario_solicitante, fk_funcionario_aprovador, fk_produto) VALUES
(1, 100, 'Reposição de estoque semanal', 'Aprovada', '2026-07-01 09:15:00', 4, 2, 1),
(2, 15, 'Uso na produção do dia', 'Aprovada', '2026-07-02 10:30:00', 1, 2, 2),
(2, 10, 'Uso na produção do dia', 'Aprovada', '2026-07-02 10:45:00', 7, 2, 3),
(1, 200, 'Compra programada mensal', 'Aprovada', '2026-07-05 08:00:00', 3, 5, 6),
(2, 25, 'Consumo do salão - eventos', 'Aprovada', '2026-07-06 11:00:00', 9, 2, 8),
(3, 30, 'Transferência para unidade filial', 'Pendente', '2026-07-10 14:20:00', 2, 5, 9),
(4, 5, 'Devolução por lote fora do padrão', 'Aprovada', '2026-07-11 15:00:00', 8, 4, 4),
(5, 8, 'Descarte por validade vencida', 'Aprovada', '2026-07-12 16:10:00', 2, 4, 12),
(2, 12, 'Uso na produção do dia', 'Aprovada', '2026-07-14 09:40:00', 1, 2, 13),
(1, 150, 'Reposição de estoque semanal', 'Aprovada', '2026-07-15 08:30:00', 4, 2, 7),
(2, 5, 'Consumo em evento especial', 'Rejeitada', '2026-07-16 13:00:00', 11, 2, 10),
(1, 80, 'Compra programada mensal', 'Aprovada', '2026-07-18 09:00:00', 3, 5, 15),
(2, 20, 'Uso na produção do dia', 'Aprovada', '2026-07-20 10:00:00', 7, 2, 14),
(5, 3, 'Descarte por avaria no lote', 'Aprovada', '2026-07-22 17:30:00', 8, 4, 18),
(3, 40, 'Transferência entre setores', 'Pendente', '2026-07-25 11:45:00', 2, 5, 5),
(2, 18, 'Consumo diário da cozinha', 'Aprovada', '2026-07-28 09:20:00', 1, 2, 11),
(1, 100, 'Reposição de estoque semanal', 'Aprovada', '2026-08-01 08:10:00', 4, 2, 16),
(2, 10, 'Uso em limpeza geral', 'Aprovada', '2026-08-03 14:00:00', 12, 2, 17);
SELECT * FROM requisicao

-----------------------------------------------------------------------------------------------------------
-- HISTORICO (25 movimentações)
-----------------------------------------------------------------------------------------------------------
--ENTRADA_OCR', 'RETIRADA_PRODUCAO', 'AJUSTE', 'PERDA'
INSERT INTO Historico (fk_funcionario, fk_lote, tipo_movimentacao, motivo, dt_hora) VALUES
(2, 1, 'ENTRADA_OCR', 'Recebimento de nova compra', '2026-06-10 09:00:00'),
(1, 1, 'RETIRADA_PRODUCAO', 'Uso na produção do dia', '2026-06-12 12:30:00'),
(4, 3, 'ENTRADA_OCR', 'Recebimento de nova compra', '2026-07-01 08:45:00'),
(7, 3, 'RETIRADA_PRODUCAO', 'Uso na produção do dia', '2026-07-02 10:45:00'),
(2, 4, 'RETIRADA_PRODUCAO', 'Preparo de pedidos do salão', '2026-06-26 13:00:00'),
(8, 5, 'RETIRADA_PRODUCAO', 'Uso na produção do dia', '2026-07-06 10:00:00'),
(4, 6, 'ENTRADA_OCR', 'Recebimento de nova compra', '2026-07-15 08:30:00'),
(1, 6, 'RETIRADA_PRODUCAO', 'Consumo diário da cozinha', '2026-07-16 12:00:00'),
(2, 8, 'ENTRADA_OCR', 'Recebimento de nova compra', '2026-06-05 09:15:00'),
(1, 8, 'RETIRADA_PRODUCAO', 'Uso na produção do dia', '2026-07-14 09:40:00'),
(9, 10, 'RETIRADA_PRODUCAO', 'Consumo em evento especial', '2026-07-06 11:00:00'),
(2, 12, 'PERDA', 'Produto vencido', '2026-07-12 16:10:00'),
(4, 13, 'PERDA', 'Perda por deterioração', '2026-08-05 10:00:00'),
(7, 14, 'RETIRADA_PRODUCAO', 'Uso na produção do dia', '2026-07-20 10:00:00'),
(3, 17, 'ENTRADA_OCR', 'Recebimento de nova compra', '2026-07-18 09:00:00'),
(8, 17, 'PERDA', 'Avaria no transporte', '2026-07-22 17:30:00'),
(12, 19, 'RETIRADA_PRODUCAO', 'Uso em limpeza geral', '2026-08-03 14:00:00'),
(2, 20, 'PERDA', 'Produto próximo ao vencimento', '2026-07-25 15:00:00'),
(4, 21, 'ENTRADA_OCR', 'Recebimento de nova compra', '2026-08-02 08:20:00'),
(7, 22, 'ENTRADA_OCR', 'Recebimento de nova compra', '2026-08-03 08:25:00'),
(1, 23, 'ENTRADA_OCR', 'Recebimento de nova compra', '2026-08-01 08:00:00'),
(4, 24, 'ENTRADA_OCR', 'Recebimento de nova compra', '2026-08-01 08:05:00'),
(8, 25, 'ENTRADA_OCR', 'Recebimento de nova compra', '2026-08-04 08:40:00'),
(11, 2, 'RETIRADA_PRODUCAO', 'Devolução ao fornecedor por lote fora do padrão', '2026-07-11 15:00:00'),
(2, 15, 'AJUSTE', 'Transferência entre setores da unidade', '2026-07-25 11:45:00');
SELECT * FROM historico