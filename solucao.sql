USE games_systems;

-- 1. Listar todos os jogos
SELECT * FROM games;

-- 2. Contar quantos jogos existem na base de dados
SELECT COUNT(*) FROM games;

-- 3. Calcular o preço médio de todos os jogos
SELECT AVG(preco) FROM games;

-- 4. Encontrar o jogo mais caro
SELECT *
FROM games
ORDER BY preco DESC
LIMIT 1;


-- 5. Encontrar o jogo com a menor nota de avaliação
SELECT *
FROM games
ORDER BY nota_avaliacao ASC
LIMIT 1;

-- 6. Listar os 5 jogos mais vendidos
SELECT *
FROM games
ORDER BY copias_vendidas DESC
LIMIT 5;

-- 7. Contar quantos jogos existem por plataforma
SELECT plataforma, COUNT(*) 
FROM games
GROUP BY plataforma;

-- 8. Calcular a soma total de cópias vendidas de todos os jogos
SELECT SUM(copias_vendidas) FROM games;

-- 9. Calcular o preço médio dos jogos por género, ordenado do mais caro para o mais barato
SELECT genero, AVG(preco) AS avg_preco
FROM games 
GROUP BY genero
ORDER BY avg_preco DESC;

-- 10. Listar as plataformas que têm mais de 2 jogos cadastrados
SELECT plataforma, COUNT(*) AS total_jogos
FROM games
GROUP BY plataforma
HAVING COUNT(*)>2;