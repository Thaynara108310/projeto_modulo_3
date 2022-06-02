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