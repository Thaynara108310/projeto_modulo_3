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

#6- Quantos rebotes cada jogador do Dallas Mavericks fez?

SELECT team_abbreviation,player_name,reb FROM games_details
WHERE team_abbreviation IN ('dal')
GROUP BY player_name;

#7- Qual a pontuação máxima e minima dos 10 primeiros jogadores?

SELECT team_abbreviation,team_id, max(pts) AS maior_pontuação,min(pts) AS menor_pontuação
 FROM games_details
 GROUP BY team_abbreviation,team_id
 ORDER BY maior_pontuação desc
 LIMIT 10;

#8-Quais  jogadores do Boston Celtics fizeram maior pontuação?

SELECT player_name,team_abbreviation, max(pts)
FROM games_details
WHERE team_abbreviation = 'bos'
GROUP BY PLAYER_NAME
ORDER BY max(pts) DESC
LIMIT 15;

#9-Quais os 5 times mais velhos da NBA?

SELECT 
nickname,
min_year,
max_year,
max_year - (min_year) AS total_anos
FROM teams
ORDER BY total_anos DESC
LIMIT 5;

#10-Quais as 5 arenas com a menor capacidade de torcedores?

SELECT arenacapacity,nickname FROM teams
GROUP BY arenacapacity
ORDER BY arenacapacity ASC
LIMIT 1,5;


#11- Quantos rebotes cada jogador do Dallas Mavericks fez?

SELECT team_abbreviation,player_name,reb FROM games_details
WHERE team_abbreviation IN ('dal')
GROUP BY player_name;


#12- Qual a pontuação máxima e minima dos 10 primeiros jogadores?

SELECT team_abbreviation,team_id, max(pts) AS maior_pontuação,min(pts) AS menor_pontuação
 FROM games_details
 GROUP BY team_abbreviation,team_id
 ORDER BY maior_pontuação desc
 LIMIT 10;
 

#13-Quais  jogadores do Boston Celtics fizeram maior pontuação?

SELECT player_name,team_abbreviation, max(pts)
FROM games_details
WHERE team_abbreviation = 'bos'
GROUP BY PLAYER_NAME
ORDER BY max(pts) DESC
LIMIT 15;

#14-Quais os 5 times mais velhos da NBA?

SELECT 
nickname,
min_year,
max_year,
max_year - (min_year) AS total_anos
FROM teams
ORDER BY total_anos DESC
LIMIT 5;

#15-Quais as 5 arenas com a menor capacidade de torcedores?

SELECT arenacapacity,nickname FROM teams
GROUP BY arenacapacity
ORDER BY arenacapacity ASC
LIMIT 1,5;

#16- Quais as 6 arenas com a maior capacidade?
SELECT arenacapacity,nickname FROM teams
GROUP BY arenacapacity
ORDER BY arenacapacity DESC
LIMIT 1,5;

#17- Quais os 5 times mais novos?
SELECT 
nickname,
min_year,
max_year,
max_year - (min_year) AS total_anos
FROM teams
ORDER BY total_anos ASC
LIMIT 5;
