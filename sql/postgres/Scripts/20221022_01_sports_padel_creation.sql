  SET SESSION "system.db_schema_id" = 39;
  RAISE NOTICE 
 --select * from system.get_schema_id();
 SET SESSION "system.db_username" = 'rickyarzu@gmail.com';
 RAISE NOTICE  current_setting('system.db_username')::character varying; 
-- select sports.get_team_id('LOS PICANTES'); 

--SELECT * FROM sports.seasons_view;

--insert into sports.teams_championships (season_id, league_id,team_id, position, penalty )
---SELECT season_id, league_id, teams.ID, 0, 0 FROM 
--  sports.championships, sports.teams

INSERT INTO sports.calendar_view(
			season_id, league_id, match_day_number, match_day_date, match_day_played)      
	VALUES (2, 			3, 		  1, 				current_date -6, current_date -6);
	
INSERT INTO sports.calendar_view(
			season_id, league_id, match_day_number, match_day_date, match_day_played)      
	VALUES (2, 			3, 		  2, 				current_date -6, current_date -6);

INSERT INTO sports.calendar_view(
			season_id, league_id, match_day_number, match_day_date, match_day_played)      
	VALUES (2, 			3, 		  3, 				current_date +1, current_date +1);
	
DELETE FROM  sports.teams;  
DELETE FROM  sports.clubs; 
	
INSERT INTO sports.teams_view (team_name  )	values 
('LOS PICANTES'),('AREQUIPA'), ('A.S. INTOMATICI'), ('ATLETICO BANDEJA'), ('SPADELLATORI BRUTTI'), ('DODICICENTO'),
('LOS CHICHARITOS'),('LA MA.GI.CA'), ('GLI ULTIMI'), ('BIG MAC'), ('FC PAMPERS PADEL'), ('VIS CUNEO'), ('BAR PEANO')
('OFFICINA DEL PADEL TEAM'), ('I RAGAZZI DELLA III B'), ('FISSOLOGRU PADEL TEAM'), ('PADEL SPORTING CUNEO'),
('FESTE CON PADEL NEDVED'), ('BUGIA NEN'), ('SUMA PADEL TOR'); 

INSERT INTO sports.teams_championships (season_id, league_id, team_id) 
SELECT season_id, league_id, teams.id
FROM 
sports.championships, sports.teams;

INSERT INTO sports.matches_VIEW --1
(league_id, season_id, match_day_number, home_team_name, visitors_team_name, score_home, score_visitor, points_home, points_visitors)
select league_id, season_id, 1, 'LOS PICANTES', 'AREQUIPA', 3, 0, 3, 0 
FROM sports.calendar_view WHERE match_day_number = 1 

INSERT INTO sports.matches_VIEW --2
(league_id, season_id, match_day_number, home_team_name, visitors_team_name, score_home, score_visitor, points_home, points_visitors)
select league_id, season_id, 1, 'A.S. INTOMATICI', 'ATLETICO BANDEJA', 3, 0, 3, 0 
FROM sports.calendar_view WHERE match_day_number = 1 

INSERT INTO sports.matches_VIEW --3
(league_id, season_id, match_day_number, home_team_name, visitors_team_name, score_home, score_visitor, points_home, points_visitors)
select league_id, season_id, 1, 'SPADELLATORI BRUTTI', 'DODICICENTO', 3, 0, 3, 0 
FROM sports.calendar_view WHERE match_day_number = 1 

INSERT INTO sports.matches_VIEW --4
(league_id, season_id, match_day_number, home_team_name, visitors_team_name, score_home, score_visitor, points_home, points_visitors)
select league_id, season_id, 1, 'LOS CHICHARITOS', 'LA MA.GI.CA', 2, 1, 2, 1 
FROM sports.calendar_view WHERE match_day_number = 1 

INSERT INTO sports.matches_VIEW --5
(league_id, season_id, match_day_number, home_team_name, visitors_team_name, score_home, score_visitor, points_home, points_visitors)
select league_id, season_id, 1, 'GLI ULTIMI', 'BIG MAC', 0, 3, 0, 3 
FROM sports.calendar_view WHERE match_day_number = 1 

INSERT INTO sports.matches_VIEW --6
(league_id, season_id, match_day_number, home_team_name, visitors_team_name, score_home, score_visitor, points_home, points_visitors)
select league_id, season_id, 1, 'FC PAMPERS PADEL', 'PADEL VIS CUNEO', 3, 0, 3, 0 
FROM sports.calendar_view WHERE match_day_number = 1 

INSERT INTO sports.matches_VIEW --7
(league_id, season_id, match_day_number, home_team_name, visitors_team_name, score_home, score_visitor, points_home, points_visitors)
select league_id, season_id, 1, 'BAR PEANO', 'OFFICINA DEL PADEL TEAM', 1, 2, 1, 2 
FROM sports.calendar_view WHERE match_day_number = 1 

INSERT INTO sports.matches_VIEW --8
(league_id, season_id, match_day_number, home_team_name, visitors_team_name, score_home, score_visitor, points_home, points_visitors)
select league_id, season_id, 1, 'I RAGAZZI DELLA III B', 'FISSOLOGRU PADEL TEAM', 3, 0, 3, 0 
FROM sports.calendar_view WHERE match_day_number = 1 

INSERT INTO sports.matches_VIEW --9
(league_id, season_id, match_day_number, home_team_name, visitors_team_name, score_home, score_visitor, points_home, points_visitors)
select league_id, season_id, 1, 'PADEL SPORTING CUNEO', 'FESTE CON PADEL NEDVED', 0, 3, 0, 3 
FROM sports.calendar_view WHERE match_day_number = 1 

INSERT INTO sports.matches_VIEW --10
(league_id, season_id, match_day_number, home_team_name, visitors_team_name, score_home, score_visitor, points_home, points_visitors)
select league_id, season_id, 1, 'BUGIA NEN', 'SUMA PADEL TOR', 0, 3, 0, 3 
FROM sports.calendar_view WHERE match_day_number = 1 

------------------------ IIa Giornata ------------------------------------------------------------------------------------------------

INSERT INTO sports.matches_VIEW --1
(league_id, season_id, match_day_number, home_team_name, visitors_team_name, score_home, score_visitor, points_home, points_visitors)
select league_id, season_id, match_day_number, 'BIG MAC', 'I RAGAZZI DELLA III B', 0, 3, 0, 3 
FROM sports.calendar_view WHERE match_day_number = 2 

INSERT INTO sports.matches_VIEW --2
(league_id, season_id, match_day_number, home_team_name, visitors_team_name, score_home, score_visitor, points_home, points_visitors)
select league_id, season_id, match_day_number, 'LA MA.GI.CA', 'PADEL SPORTING CUNEO', 3, 0, 3, 0 
FROM sports.calendar_view WHERE match_day_number = 2 

INSERT INTO sports.matches_VIEW --3
(league_id, season_id, match_day_number, home_team_name, visitors_team_name, score_home, score_visitor, points_home, points_visitors)
select league_id, season_id, match_day_number, 'DODICICENTO', 'A.S. INTOMATICI', 0, 3, 0, 3 
FROM sports.calendar_view WHERE match_day_number = 2 

INSERT INTO sports.matches_VIEW --4
(league_id, season_id, match_day_number, home_team_name, visitors_team_name, score_home, score_visitor, points_home, points_visitors)
select league_id, season_id,match_day_number, 'OFFICINA DEL PADEL TEAM', 'FC PAMPERS PADEL', 2, 1, 2, 1 
FROM sports.calendar_view WHERE match_day_number = 2

INSERT INTO sports.matches_VIEW --5
(league_id, season_id, match_day_number, home_team_name, visitors_team_name, score_home, score_visitor, points_home, points_visitors)
select league_id, season_id,match_day_number, 'FISSOLOGRU PADEL TEAM', 'BAR PEANO', 0, 3, 0, 3
FROM sports.calendar_view WHERE match_day_number = 2

INSERT INTO sports.matches_VIEW --6
(league_id, season_id, match_day_number, home_team_name, visitors_team_name, score_home, score_visitor, points_home, points_visitors)
select league_id, season_id, match_day_number, 'PADEL VIS CUNEO', 'GLI ULTIMI', 3, 0, 3, 0
FROM sports.calendar_view WHERE match_day_number = 2

INSERT INTO sports.matches_VIEW --7
(league_id, season_id, match_day_number, home_team_name, visitors_team_name, score_home, score_visitor, points_home, points_visitors)
select league_id, season_id, match_day_number, 'SUMA PADEL TOR', 'SPADELLATORI BRUTTI', 3, 0, 3, 0
FROM sports.calendar_view WHERE match_day_number = 2

INSERT INTO sports.matches_VIEW --8
(league_id, season_id, match_day_number, home_team_name, visitors_team_name, score_home, score_visitor, points_home, points_visitors)
select league_id, season_id, match_day_number, 'FESTE CON PADEL NEDVED', 'BUGIA NEN', 3, 0, 3, 0
FROM sports.calendar_view WHERE match_day_number = 2

INSERT INTO sports.matches_VIEW --9
(league_id, season_id, match_day_number, home_team_name, visitors_team_name, score_home, score_visitor, points_home, points_visitors)
select league_id, season_id, match_day_number, 'AREQUIPA', 'LOS CHICHARITOS', 1, 2, 1, 2
FROM sports.calendar_view WHERE match_day_number = 2

INSERT INTO sports.matches_VIEW --10
(league_id, season_id, match_day_number, home_team_name, visitors_team_name, score_home, score_visitor, points_home, points_visitors)
select league_id, season_id, match_day_number, 'ATLETICO BANDEJA', 'LOS PICANTES', 0, 3, 0, 3
FROM sports.calendar_view WHERE match_day_number = 2

SELECT id, match_day_number, home_team_name, visitors_team_name  
   FROM sports.matches_VIEW ORDER BY ID ASC
   
delete FROM sports.matches_VIEW



