SELECT id, team_name FROM sports.teams
ORDER BY  team_name asc; 
SET SESSION "system.db_schema_id" = 39; 
INSERT INTO sports.teams_championships (season_id, league_id, team_id)
VALUES
(2, 5, 11), --BIG MAC
(2, 5, 21), --SUMA PADEL 
(2, 5, 3), --AREQUIPA
(2, 5, 17), --FISSOLOGRU PADEL TEAM MSC
(2, 5, 6), --SPADELLATORI BRUTTI
(2, 5, 7), --DODICICENTO MSC
(2, 5, 18), --PADEL SPORTING CUNEO
(2, 5, 10), --GLI ULTIMI ODP
(2, 5, 20), --BUGIA NEN 
(2, 5, 5)  --ATLETICO BANDEJA 
