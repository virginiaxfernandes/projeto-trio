ALTER TABLE Cliente ADD COLUMN data_nascimento DATE;

ALTER TABLE Funcionario MODIFY COLUMN nome VARCHAR(150);

ALTER TABLE Cliente ADD COLUMN sexo ENUM('Masculino', 'Feminino', 'Outro');

ALTER TABLE Produto DROP COLUMN descricao;

ALTER TABLE Cliente ADD CONSTRAINT unique_telefone UNIQUE (telefone);

ALTER TABLE Funcionario ADD COLUMN comissao DECIMAL(5,2);

ALTER TABLE Produto MODIFY COLUMN preco DECIMAL(12,2);

ALTER TABLE Produto ADD COLUMN quantidade_vendida INT DEFAULT 0;

ALTER TABLE Venda MODIFY COLUMN forma_pagamento VARCHAR(100);

ALTER TABLE Venda ADD COLUMN observacao TEXT;
