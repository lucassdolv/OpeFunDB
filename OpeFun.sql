-- AS -> APELIDO
-- OPERADORES ARITMETICOS
SELECT 10 + 5 AS soma;
SELECT 10 - 5 AS subtracao;
SELECT 10 * 5 AS multiplicacao;
SELECT 10 / 5 AS divisao;
SELECT 10 % 3 AS modulo;

-- OPERADORES DE COMPARACAO
SELECT * FROM cliente WHERE idade = 20; -- todo mundo que tem
SELECT * FROM cliente WHERE idade != 25; -- todo mundo que nao tem
SELECT * FROM produtos WHERE preco > 100; -- maior
SELECT * FROM produtos WHERE preco < 50; -- menor
SELECT * FROM produtos WHERE preco >= 500; -- maior igual
SELECT * FROM produtos WHERE preco <= 1000; -- menor igual
SELECT * FROM produtos WHERE preco BETWEEN 50 AND 100; -- esteja entre
SELECT * FROM cliente WHERE nome IN ('vitinho', 'roger'); -- diversos
SELECT * FROM cliente WHERE nome LIKE ('ro%'); -- oger
SELECT * FROM cliente WHERE nome LIKE ('%o%'); -- vitinh %o -- r%o%ger
SELECT * FROM cliente WHERE nome LIKE ('%ger'); -- ro
SELECT * FROM cliente WHERE nome IS NULL; -- seleciona quem é nulo

-- OPERADORES LOGICOS
SELECT * FROM cliente WHERE idade > 15 AND idade < 25; -- && 
SELECT * FROM cliente WHERE idade > 15 OR idade < 25; -- ||
SELECT * FROM cliente WHERE NOT idade = 18; -- nao seja

-- FUNCAO DE AGREGACAO
SELECT COUNT(*) FROM cliente; -- contar as linhas do banco
SELECT SUM(quantidade) FROM produtos; -- somar
SELECT AVG(quantidade) FROM produtos; -- media
SELECT MIN(quantidade) FROM produtos; -- minimo
SELECT MAX(quantidade) FROM produtos; -- maximo

-- FUNCOES DE STRING
SELECT CONCAT(nome, idade) FROM cliente; -- concatenar
SELECT LOWER(nome) FROM cliente; -- deixar tudo minusculo
SELECT UPPER(nome) FROM cliente; -- deixar tudo maiusculo
SELECT SUBSTRING(nome, 5, 10) FROM cliente; -- corta palavara, inicio e fim

-- FUNCAO DE DATA E HORA 
SELECT NOW(); -- retorna a data e hora atual
SELECT CURDATE(); -- retorna a data atual
SELECT CURTIME(); -- retorna a hora atual

-- FUNCAO MATEMATICAS
SELECT ABS(-534.25); -- retorna um valor absoluto
SELECT CEIL(43.45); -- arredonda para um numero inteiro
SELECT CEILING(43.65); --  arrendonda para um numero inteiro
SELECT FLOOR(45.97); -- arredonda para baixo
SELECT ROUND(45.44, 0); -- arredonda com base nas casas decimais
SELECT SQRT(26); -- raiz quadrada
