
-- SQL: DML - INSERT

INSERT INTO cliente (nome, endereco, email, telefone) VALUES
('Victoria Regina', 'Rua Castro Alves', 'victoria.regina@gmail.com', '819781517897'),
('Virgínia Fernandes', 'Rua Dois de Julho', 'virginia@gmail.com', '81995646742'),
('Isabela Chaves', 'Rua Desembargador Martins Pereira', 'isabelac@gmail.com', '81989492582'),
('Maria Eduarda', 'Rua Demócrito de Souza Filho', 'maduds@gmail.com', '81993175703'),
('João Junior', 'Rua Desembargador Edmundo Jordão', 'joao@gmail.com', '81993375097'),
('Camilla Vieira', 'Rua Desembargador Góis Cavalcante', 'milla@gmail.com', '81998866785'),
('Alice Vieira', 'Rua Dezenove de Abril', 'alicevieira@gmail.com', '81981363766'),
('Amanda Hellen', 'Rua Francisco da Cunha', 'amanda@gmail.com', '81996022418'),
('Marinara Geiza', 'Rua General Abreu e Lima', 'mari@gmail.com', '81981259589'),
('Julia Carvalho', 'Rua Francisco da Cunha', 'carvalhoj@gmail.com', '819926275331');

INSERT INTO Funcionario (nome, cargo, contato) VALUES
('João Silva', 'Vendedor', '81999990000'),
('Ana Lima', 'Gerente', '81988887777'),
('Carlos Mendes', 'Atendente', '81988776655'),
('Beatriz Souza', 'Vendedora', '81986665544'),
('Rafael Costa', 'Estoquista', '81985554433'),
('Marina Oliveira', 'Financeiro', '81984443322'),
('Luana Dias', 'Supervisora', '81983332211'),
('Pedro Santos', 'Vendedor', '81982221100'),
('Juliana Rocha', 'Recepcionista', '81981110099'),
('Thiago Ramos', 'TI', '81980009988');

INSERT INTO Fornecedor (nome, endereco, email) VALUES
('Moda A', 'Av. Recife, 100', 'modaA@email.com'),
('Trend B', 'Av. Beberibe, 200', 'trendB@email.com'),
('Style C', 'Av. Norte, 300', 'styleC@email.com'),
('Fashion D', 'Av. Recife, 400', 'fashionD@email.com'),
('Wear E', 'Av. Norte, 500', 'wearE@email.com'),
('Look F', 'Av. Caxangá, 600', 'lookF@email.com'),
('Chic G', 'Av. Conde da Boa Vista, 700', 'chicG@email.com'),
('Top H', 'Av. Guararapes, 800', 'topH@email.com'),
('Dress I', 'Av. Norte, 900', 'dressI@email.com'),
('Jeans J', 'Av. Recife, 1000', 'jeansJ@email.com');

INSERT INTO Produto (id_categoria, id_fornecedor, nome, descricao, preco, tamanho, cor, marca) VALUES
(1, 1, 'Camiseta Básica', 'Camiseta de algodão 100%', 29.90, 'M', 'Branca', 'WearFit'),
(1, 2, 'Calça Jeans Slim', 'Modelagem slim com elastano', 99.90, '38', 'Azul', 'UrbanStyle'),
(1, 3, 'Vestido Floral', 'Estampa floral leve', 129.90, 'P', 'Rosa', 'Feminina'),
(1, 4, 'Blusa Cropped', 'Blusa curta com amarração', 49.90, 'G', 'Verde', 'TrendMe'),
(2, 5, 'Tênis Casual', 'Confortável para o dia a dia', 149.90, '40', 'Branco', 'StepUp'),
(1, 6, 'Jaqueta Jeans', 'Com forro interno e bolsos', 179.90, 'M', 'Jeans Claro', 'DenimPro'),
(3, 7, 'Boné Estampado', 'Boné ajustável com logo', 39.90, 'infatil', 'Preto', 'CapZone'),
(3, 8, 'Cinto de Couro', 'Couro sintético com fivela', 59.90, '115', 'Marrom', 'BeltWay'),
(1, 9, 'Saia Plissada', 'Tecido leve, comprimento médio', 79.90, 'M', 'Bege', 'FashionOne'),
(1, 10, 'Camisa Social', 'Clássica para trabalho', 89.90, 'G', 'Branca', 'OfficeLine');

INSERT INTO Venda (id_produto, data_venda, desconto, forma_pagamento, status_entrega, id_funcionario, id_cliente) VALUES
(1, '2025-05-01', 5.00, 'Cartão', 'Entregue', 1, 1),
(2, '2025-05-02', 0.00, 'Boleto', 'Pendente', 2, 2),
(3, '2025-05-03', 10.00, 'Pix', 'Entregue', 3, 3),
(4, '2025-05-04', 0.00, 'Cartão', 'Cancelada', 4, 4),
(5, '2025-05-05', 2.50, 'Dinheiro', 'Entregue', 5, 5),
(6, '2025-05-06', 0.00, 'Pix', 'Entregue', 6, 6),
(7, '2025-05-07', 15.00, 'Cartão', 'Pendente', 7, 7),
(8, '2025-05-08', 0.00, 'Boleto', 'Entregue', 8, 8),
(9, '2025-05-09', 5.00, 'Pix', 'Entregue', 9, 9),
(10, '2025-05-10', 0.00, 'Cartão', 'Entregue', 10, 10);

INSERT INTO Categoria (nome) VALUES
('Camisetas'),
('Calças'),
('Vestidos'),
('Jaquetas'),
('Saias'),
('Blusas'),
('Shorts'),
('Sapatos'),
('Acessórios'),
('Roupas Íntimas');

INSERT INTO Promocao (desconto, data_inicio, data_final, id_produto) VALUES
(10.00, '2025-04-01', '2025-04-10', 11), 
(15.00, '2025-04-05', '2025-04-15', 12), 
(20.00, '2025-04-05', '2025-04-20', 13), 
(5.00,  '2025-04-10', '2025-04-25', 14), 
(8.00,  '2025-04-15', '2025-04-30', 15), 
(12.00, '2025-04-20', '2025-05-05', 16), 
(9.00,  '2025-04-22', '2025-05-06', 17), 
(6.00,  '2025-05-01', '2025-05-10', 18), 
(5.00,  '2025-05-05', '2025-05-12', 19), 
(7.00,  '2025-05-09', '2025-05-17', 20); 
