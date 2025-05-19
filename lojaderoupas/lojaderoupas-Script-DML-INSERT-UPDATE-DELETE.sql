INSERT INTO cliente VALUES
-- SQL: DML - INSERT
( "Victoria Regina", 'Rua Castro Alves', "victoria.regina@gmail.com", "(81)978151-7897"),
    ( "Virgínia Fernandes", 'Rua Dois de Julho', "virginia@gmail.com", "(81)99564-6742"),
    ( "Isabela Chaves", 'Rua Desembargador Martins Pereira', "isabelac@gmail.com", "(81)98949-2582"),
    ( "Maria Eduarda", 'Rua Demócrito de Souza Filho', "maduds@gmail.com", "(81)99317-5703"),
    ( "João Junior", 'Rua Desembargador Edmundo Jordão', "joao@gmail.com", "(81)99337-5097"),
    ( "Camilla Vieira", 'Rua Desembargador Góis Cavalcante', "milla@gmail.com", "(81)99886-6785"),
    ( "Alice Vieira", 'Rua Dezenove de Abril', "alicevieira@gmail.com", "(81)98136-3766"),
    ( "Amanda Hellen", 'Rua Francisco da Cunha', "amanda@gmail.com", "(81)99602-2418"),
    ( "Marinara Geiza", 'Rua General Abreu e Lima', "mari@gmail.com", "(81)98125-9589"),
    ( "Julia Carvalho", 'Rua Francisco da Cunha', "carvalhoj@gmail.com", "(81)992627-5331");

    -- SQL: DML - UPDATE

UPDATE Cliente
SET nome = 'Amanda Fernandes'
WHERE id_cliente = 1;

UPDATE Cliente
SET endereco = 'Rua das Flores'
WHERE id_cliente = 5;

UPDATE Cliente
SET email = 'joaocarlos@gmail.com'
WHERE id_cliente = 4;

UPDATE Cliente
SET telefone = '(81)99888-7777'
WHERE id_cliente = 2;

UPDATE Cliente
SET nome = 'Renata Carvalho'
WHERE id_cliente = 10;

UPDATE Cliente
SET endereco = 'Rua Brasuela'
WHERE id_cliente = 9;

UPDATE Cliente
SET email = 'hellen@gmail.com'
WHERE id_cliente = 8;

UPDATE Cliente
SET email = 'joaocarlos@gmail.com'
WHERE id_cliente = 4;

UPDATE Cliente
SET telefone = '(81)97848-7777'
WHERE id_cliente = 6;


UPDATE Cliente
SET endereco = 'Rua Cajuri'
WHERE id_cliente = 3;

UPDATE Cliente
SET telefone = '(81)97811-8888'
WHERE id_cliente = 3;

UPDATE Cliente
SET telefone = '(81)97848-7877'
WHERE id_cliente = 1;

UPDATE Cliente
SET telefone = '(81)9444-4111'
WHERE id_cliente = 5;


-- SQL: DML - DELETE

DELETE FROM Cliente
WHERE telefone = '(81)992627-5331';

DELETE FROM Cliente
WHERE id_cliente = 5;

DELETE FROM Cliente
WHERE email = 'milla@gmail.com';

DELETE FROM Cliente
WHERE nome = 'João Junior';

DELETE FROM Cliente
WHERE endereco LIKE '%Rua Brasuela%';

DELETE FROM Cliente
WHERE id_cliente > 9;

DELETE FROM Cliente
WHERE nome LIKE 'Virgínia%';


