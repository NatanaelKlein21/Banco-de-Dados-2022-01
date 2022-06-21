-- ATIVIDADE 1

-- questão 3
SELECT codlivro, titulo
FROM Livro;
-- questão 4
SELECT *
FROM Livro;
-- questão 5
SELECT *
FROM Livro
WHERE preco > 40;
-- questao 6
SELECT *
FROM Livro
WHERE preco > 40 AND sigla = 'P';
-- questão 7
SELECT *
FROM Livro
WHERE preco < 40 AND sigla = 'P';
-- questão 8
SELECT *
FROM Livro
WHERE titulo LIKE '%BANCO%';
-- questão 9
SELECT *
FROM Livro
WHERE titulo LIKE '%DADOS%';
-- questão 10
SELECT *
FROM Livro
WHERE preco BETWEEN 30 AND 100;
-- questão 11
SELECT *
FROM Livro
WHERE sigla IN('P','S','B');
-- questão 12
SELECT cpf, nome
FROM Autor
WHERE datanascimento >= '1990-01-01';

-- questão 13
SELECT matricula, nome
FROM Autor
WHERE endereco LIKE '%RIO DE JANEIRO%';
-- questão 14
SELECT matricula, nome, endereco
FROM Autor
WHERE nome LIKE '%JOAO%';