-- ATIVIDADE 2

-- questão 1
SELECT count(nome)
FROM Autor;
-- questão 2
SELECT count(distinct codlivro)
FROM Escreve;
-- questão 3
SELECT codlivro, count(distinct matricula)
FROM Escreve
GROUP BY codlivro;
-- questão 4
SELECT codlivro, count(matricula)
FROM Escreve
GROUP BY codlivro
HAVING count(matricula) >= 2;
-- questão 5
SELECT codeditora, avg(preco)
FROM Livro
GROUP BY codeditora
HAVING avg(preco) > 45;
-- questao 6
SELECT codeditora, min(preco), max(preco), avg(preco)
FROM Livro
WHERE sigla IN ('S', 'P', 'B') 
GROUP BY codeditora;
-- questao 7
SELECT nacionalidade, count(nacionalidade)
FROM Autor
GROUP BY nacionalidade;
-- questao 8
SELECT nacionalidade, count(nacionalidade)
FROM Autor
WHERE datanascimento < '1990-01-01'
GROUP BY nacionalidade;
-- questao 9
SELECT max(datanascimento) as Mais_novo, min(datanascimento) as Mais_velho
FROM Autor;
-- questao 10
SELECT nome
FROM Editora
ORDER BY nome;
-- questao 11
SELECT titulo, preco
FROM Livro
ORDER BY preco DESC;
-- questao 12
SELECT DISTINCT codeditora
FROM Livro
WHERE lancamento IS NOT NULL
ORDER BY codeditora;
-- questao 13
SELECT codeditora, sigla, titulo
FROM Livro
WHERE lancamento IS NOT NULL
ORDER BY preco DESC, codeditora ASC, titulo ASC;
-- questao 14
SELECT codeditora as Editora, sigla as Assunto, COUNT(codlivro) as Quantidade
FROM Livro
GROUP BY Editora, Assunto
ORDER BY Quantidade DESC;