SELECT id, team_name FROM sports.teams
ORDER BY  team_name asc; 
SET SESSION "system.db_schema_id" = 39; 
INSERT INTO sports.teams_championships (season_id, league_id, team_id)
VALUES
(2, 4, 12), --FC PAMPERS PADEL
(2, 4, 4),  --A.S. INTOMATICI
(2, 4, 2),  --LOS PICANTES
(2, 4, 19), --FESTE CON PADEL NEDVED 
(2, 4, 16), --I RAGAZZI DELLA III B
(2, 4, 13), --PADEL VIS CUNEO VIS
(2, 4, 14), --BAR PEANO
(2, 4, 15), --OFFICINA DEL PADEL TEAM ODP
(2, 4, 8), --LOS CHICHARITOS
(2, 4, 9) --LA MA.GI.CA
