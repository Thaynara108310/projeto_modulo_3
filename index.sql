#1- QUANTAS PARTIDAS CADA JOGADOR PARTICIPOU?
SELECT
players.team_id,
players.player_name,
ranking.team_id,
ranking.G
FROM players
JOIN ranking ON players.team_id= ranking.team_id;

#2- Qual a pontuação máxima e minima de cada time?

SELECT team_abbreviation,team_id, max(pts) AS maior_pontuação,min(pts) AS menor_pontuação
 FROM games_details
 GROUP BY team_abbreviation,team_id
 ORDER BY maior_pontuação;

#3-Tempo médio de um jogador em quadra.

SELECT round(avg(min),2) AS tempo_médio FROM games_details;

#4- Quantos anos cada time possui desde a sua fundação?

SELECT 
nickname,
min_year,
max_year,
max_year - (min_year) AS total_anos
FROM teams
ORDER BY total_anos;

#5- O pivô é o jogador que atua mais próximo à cesta.Quais jogadores estavam nesta função?

SELECT start_position,player_name,team_abbreviation FROM games_details
WHERE start_position LIKE '%C';
