-- Natanael de Campos Klein

-- Questão 3
SELECT primeironome, ultimonome
FROM Aluno
WHERE ultimonome LIKE '%S' OR ultimonome LIKE '%L' AND cidade = 'SEATTLE';

-- Questão 4
SELECT estacao, count(estacao) as Quantidade_cursos
FROM Cursooferecido
GROUP BY estacao;

-- Questão 5
SELECT cursono, estacao, ano
FROM Cursooferecido
WHERE (estacao = 'FALL' AND ano = 2005) OR (estacao = 'SPRING' AND ano = 2006)
ORDER BY estacao;

-- Questão 6 ---------------------------
SELECT ano, count(ano) as Quantidade_por_ano, estacao, count(estacao) as Quantidade_por_estacao
FROM Cursooferecido
GROUP BY ano, estacao
ORDER BY Quantidade_por_ano;

-- Questão 7
SELECT AVG(gpa) as Media
FROM Aluno
WHERE classe = 'JR' AND gpa > 3.00
GROUP BY cidade
ORDER BY cidade DESC;

-- Questão 8
SELECT DISTINCT sala
FROM Cursooferecido
WHERE profssn IS NOT NULL;

-- Questão 9
SELECT SUM(creditos) AS Soma_creditos
FROM Curso
WHERE descricao NOT LIKE 'F%';

-- Questão 10
UPDATE Professor SET
	salario = salario + (salario * 10)/100
    -- salario = salario*1.1
	WHERE classificacao = 'ASSC';
    
SELECT *
FROM Professor;
