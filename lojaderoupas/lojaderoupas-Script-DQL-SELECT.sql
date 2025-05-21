-- DQL - CONSULTAS

SELECT c.nome, v.id_venda, v.data_venda
FROM Cliente c
JOIN Venda v ON c.id_cliente = v.id_cliente;

SELECT p.nome AS produto, f.nome AS fornecedor
FROM Produto p
JOIN Fornecedor f ON p.id_fornecedor = f.id_fornecedor;

SELECT DISTINCT f.nome
FROM Funcionario f
JOIN Venda v ON f.id_funcionario = v.id_funcionario;

SELECT * FROM Venda WHERE forma_pagamento = 'Pix';

SELECT nome FROM Produto
WHERE preco > (SELECT AVG(preco) FROM Produto);

SELECT * FROM Venda WHERE desconto > 5.00;

SELECT id_cliente, COUNT(*) AS total_compras
FROM Venda
GROUP BY id_cliente
HAVING COUNT(*) > 1;

SELECT e.id_produto, e.quantidade
FROM Estoque e
JOIN Venda v ON e.id_produto = v.id_produto;

SELECT * FROM Promocao
WHERE '2025-05-10' BETWEEN data_inicio AND data_final;

SELECT p.nome, pr.desconto
FROM Produto p
JOIN Promocao pr ON p.id_produto = pr.id_produto
WHERE pr.desconto > 10;

SELECT nome FROM Cliente WHERE id_cliente = (
  SELECT id_cliente FROM Venda WHERE id_venda = 1
);

SELECT p.nome FROM Produto p
JOIN Categoria c ON p.id_categoria = c.id_categoria
WHERE c.nome = 'Vestidos';

SELECT * FROM Funcionario WHERE cargo = 'Vendedor';

SELECT id_funcionario, COUNT(*) AS total_vendas
FROM Venda
GROUP BY id_funcionario;

SELECT nome FROM Produto
WHERE id_produto NOT IN (SELECT id_produto FROM Promocao);

SELECT c.nome, SUM(p.preco - v.desconto) AS total_gasto
FROM Cliente c
JOIN Venda v ON c.id_cliente = v.id_cliente
JOIN Produto p ON p.id_produto = v.id_produto
GROUP BY c.nome;

SELECT p.nome, e.quantidade
FROM Produto p
JOIN Estoque e ON p.id_produto = e.id_produto
WHERE e.quantidade > 10;

SELECT p.nome, v.data_venda
FROM Produto p
JOIN Venda v ON p.id_produto = v.id_produto;

SELECT id_fornecedor, COUNT(*) AS total_produtos
FROM Produto
GROUP BY id_fornecedor
HAVING COUNT(*) > 1;

SELECT nome FROM Funcionario WHERE id_funcionario = (
  SELECT id_funcionario FROM Venda ORDER BY data_venda DESC LIMIT 1
);