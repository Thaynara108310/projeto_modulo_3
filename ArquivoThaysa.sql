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
