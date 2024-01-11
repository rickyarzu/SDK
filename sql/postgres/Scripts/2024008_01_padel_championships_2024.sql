SET SESSION "system.db_schema_id" = 39; 

INSERT INTO sports.seasons_view (season_des, season_code)
VALUES ( '2023/24', '23/24');

SET SESSION "system.db_schema_id" = 39; 
SELECT id, season_des, season_code, db_schema_id, order_number, remote_id, jguid, deleted, insert_date, update_date, user_insert, user_update
	FROM sports.seasons_view;
	
SELECT * FROM sports.seasons WHERE Db_schema_id = 39; 
	
SET SESSION "system.db_schema_id" = 39; 

INSERT INTO sports.leagues(
		 league_name, country_id, league_position, league_code, 		all_players)
VALUES ('Goliardi Cuneo Padel Tour GOLD WorldpadelVillage',      1,        	   30,  	   'G24',    false);
	
INSERT INTO sports.leagues(
		 league_name, country_id, league_position, league_code, all_players)
VALUES ( 'Goliardi Cuneo Padel Tour SILVER Parola Sport',      1,        	   20,  	   'S24',  false);

	
SELECT * FROM sports.leagues WHERE Db_schema_id = 39;  

SELECT * FROM  sports.championships;

SET SESSION "system.db_schema_id" = 39; 

INSERT INTO sports.championships_view(
	season_id, league_id, promoted, playoff, relegation , champions	, playout, teams)
VALUES 
    (3		 , 			7, 		  0,       4, 			0, 			0, 	    4,     8);
INSERT INTO sports.championships_view(
	season_id, league_id, promoted, playoff, relegation , champions	, playout, teams)
VALUES 
    (3		 , 			8, 		  0,       4, 			0, 			0, 	    4,     8);
	
SET SESSION "system.db_schema_id" = 39; 
SELECT season_id, league_id, league_name  FROM sports.championships_VIEW;


SET SESSION "system.db_schema_id" = 39;
INSERT INTO sports.teams_view(team_name) VALUES
('BAR PEANO'),
('GLI ULTIMI'),
('LE RAGADI'),
('CREATTIVA'),
('LOS PICANTES'),
('DAMA 3 PADEL'),
('VISPADELLO'),
('VANGHEL'); 

SET SESSION "system.db_schema_id" = 39;
INSERT INTO sports.teams_view(team_name) VALUES
('GLI ARCANGELI'),
('OFFICINA DEL PADEL 2.0'),
('FISSOLOGRU PADEL TEAM'),
('I CHIQUITI'),
('ZOOPADEL'),
('PADELISTI PER CASO'),
('EXGB'),
('LOS CHAVALES'); 

SET SESSION "system.db_schema_id" = 39;
INSERT INTO sports.teams_view(team_name) VALUES
('OFFICINA DEL PADEL'),
('SPADELLATORI BRUTTI'),
('THE OLD MEN'),
('SIRPadel'),
('A.S. INTOMATICI'),
('TEAM BATTILEI'),
('SUMA PADEL TOR'),
('GAME, SET & BEER');

SET SESSION "system.db_schema_id" = 39;
INSERT INTO sports.teams_view(team_name) VALUES
('PADELVISCUNEO'),
('CARAGLIO RICAMBI OLIMAC'),
('BIG MAC'),
('BUGIA NEN'),
('4 SALTI IN PADEL'),
('PRATO NEVOSO PADEL'),
('BAR ENJOY'),
('CUNEO CENTRO ASSICURAZIONI');

select * from sports.teams order by team_name; 

SET SESSION "system.db_schema_id" = 39;
SELECT * FROM sports.teams_championships;
SELECT * FROM sports.leagues WHERE Db_schema_id = 39;  

select * from sports.teams where team_name like 'OFFICINA DEL PADEL 2.0%';

CREATE TRIGGER teams_championships_view_iou_trg
    INSTEAD OF INSERT OR DELETE OR UPDATE 
    ON sports.teams_championships_view
    FOR EACH ROW
    EXECUTE PROCEDURE sports.teams_championships_view_trg();

SET SESSION "system.db_schema_id" = 39;
INSERT INTO sports.teams_championships_view(  season_id, league_id, team_name  )
VALUES
(3, 8, 'BAR PEANO'),
(3, 8, 'GLI ULTIMI'),
(3, 8, 'LE RAGADI'),
(3, 8, 'CREATTIVA'),
(3, 8, 'LOS PICANTES'),
(3, 8, 'DAMA 3 PADEL'),
(3, 8, 'VISPADELLO'),
(3, 8, 'VANGHEL');

SELECT * FROM sports.teams V WHERE V.team_name = 'BAR PEANO';

SET SESSION "system.db_schema_id" = 39;
INSERT INTO sports.teams_championships_view(  season_id, league_id, team_name  ) VALUES
(3, 7, 'GLI ARCANGELI'),
(3, 7, 'OFFICINA DEL PADEL 2.0'),
(3, 7, 'FISSOLOGRU PADEL TEAM'),
(3, 7, 'I CHIQUITI'),
(3, 7, 'ZOOPADEL'),
(3, 7, 'PADELISTI PER CASO'),
(3, 7, 'EXGB'),
(3, 7, 'LOS CHAVALES');

SET SESSION "system.db_schema_id" = 39;
INSERT INTO sports.teams_championships_view(  season_id, league_id, team_name  ) VALUES
(3, 9, 'OFFICINA DEL PADEL'),
(3, 9, 'SPADELLATORI BRUTTI'),
(3, 9, 'THE OLD MEN'),
(3, 9, 'SIRPadel'),
(3, 9, 'A.S. INTOMATICI'),
(3, 9, 'TEAM BATTILEI'),
(3, 9, 'SUMA PADEL TOR'),
(3, 9, 'GAME, SET & BEER'); 

SET SESSION "system.db_schema_id" = 39;
INSERT INTO sports.teams_championships_view(  season_id, league_id, team_name  ) VALUES
(3, 10, 'PADELVISCUNEO'),
(3, 10, 'CARAGLIO RICAMBI OLIMAC'),
(3, 10, 'BIG MAC'),
(3, 10, 'BUGIA NEN'),
(3, 10, '4 SALTI IN PADEL'),
(3, 10, 'PRATO NEVOSO PADEL'),
(3, 10, 'BAR ENJOY'),
(3, 10, 'CUNEO CENTRO ASSICURAZIONI'); 

DELETE FROM system.syslog;
SELECT * FROM system.syslog ORDER BY LOGTIME DESC; 

SET SESSION "system.db_schema_id" = 39;
select * from sports.teams_championships where season_id = 3; 
select * from sports.teams where team_name = 'VANGHEL'; 
select * from sports.calendar; 

-- 10	"GIRONE CISL" 
SET SESSION "system.db_schema_id" = 39;
INSERT INTO sports.calendar_view ( season_id, league_id, match_day_number, match_day_date ) 
VALUES 
(3, 10, 1, '2023-10-16'), 
(3, 10, 2, '2023-10-25'), 
(3, 10, 3, '2023-11-6'), 
(3, 10, 4, '2023-11-15'), 
(3, 10, 5, '2023-11-23'), 
(3, 10, 6, '2023-11-30'), 
(3, 10, 7, '2023-12-11'); 
SET SESSION "system.db_schema_id" = 39;
select * from sports.calendar_view where season_id = 3 and league_id = 10; 


-- 9	"GIRONE LAB TRAVEL"
SET SESSION "system.db_schema_id" = 39;
INSERT INTO sports.calendar_view ( season_id, league_id, match_day_number, match_day_date ) 
VALUES 
(3, 9, 1, '2023-10-16'), 
(3, 9, 2, '2023-10-25'), 
(3, 9, 3, '2023-11-6'), 
(3, 9, 4, '2023-11-15'), 
(3, 9, 5, '2023-11-23'), 
(3, 9, 6, '2023-11-30'), 
(3, 9, 7, '2023-12-11');
SET SESSION "system.db_schema_id" = 39;
select * from sports.calendar_view where season_id = 3 and league_id = 9; 

--8	"GIRONE GINO BMW MINI"
SET SESSION "system.db_schema_id" = 39;
INSERT INTO sports.calendar_view ( season_id, league_id, match_day_number, match_day_date ) 
VALUES 
(3, 8, 1, '2023-10-16'), 
(3, 8, 2, '2023-10-27'), 
(3, 8, 3, '2023-11-7'), 
(3, 8, 4, '2023-11-17'), 
(3, 8, 5, '2023-11-20'), 
(3, 8, 6, '2023-11-28'), 
(3, 8, 7, '2023-12-12');  
SET SESSION "system.db_schema_id" = 39;
select * from sports.calendar_view where season_id = 3 and league_id = 8; 

--7	"GIRONE PAROLA SPORT"
SET SESSION "system.db_schema_id" = 39;
INSERT INTO sports.calendar_view ( season_id, league_id, match_day_number, match_day_date ) 
VALUES 
(3, 7, 1, '2023-10-17'), 
(3, 7, 2, '2023-10-23'), 
(3, 7, 3, '2023-11-6'), 
(3, 7, 4, '2023-11-13'), 
(3, 7, 5, '2023-11-20'), 
(3, 7, 6, '2023-11-27'), 
(3, 7, 7, '2023-11-15'); 
SET SESSION "system.db_schema_id" = 39;
select * from sports.calendar_view where season_id = 3 and league_id = 7; 


--7	"GIRONE PAROLA SPORT"
DELETE FROM sports.matches WHERE SEASON_ID = 3 AND LEAGUE_ID = 7; 
DELETE FROM sports.calendar_teams WHERE SEASON_ID = 3 AND LEAGUE_ID = 7; 
SET SESSION "system.db_schema_id" = 39;
INSERT INTO sports.matches_view (home_team_name, visitors_team_name, season_id, league_id, match_day_number, match_date  )
VALUES
('GLI ARCANGELI' , 'ZOOPADEL', 3, 7, 1, '2023-10-18'), 
('OFFICINA DEL PADEL 2.0' , 'PADELISTI PER CASO', 3, 7, 1, '2023-10-17'), 
('FISSOLOGRU PADEL TEAM' , 'EXGB', 3, 7, 1, '2023-10-19'), 
('I CHIQUITI' , 'LOS CHAVALES', 3, 7, 1, '2023-10-18'), 
('ZOOPADEL' , 'I CHIQUITI', 3, 7, 2, '2023-10-23'), 
('LOS CHAVALES' , 'FISSOLOGRU PADEL TEAM', 3, 7, 2, '2023-10-23'), 
('EXGB' , 'OFFICINA DEL PADEL 2.0', 3, 7, 2, '2023-10-24'), 
('PADELISTI PER CASO' , 'GLI ARCANGELI', 3, 7, 2, '2023-10-25'), 
('OFFICINA DEL PADEL 2.0' , 'LOS CHAVALES', 3, 7, 3, '2023-11-6'), 
('FISSOLOGRU PADEL TEAM' , 'ZOOPADEL', 3, 7, 3, '2023-11-6'), 
('I CHIQUITI' , 'GLI ARCANGELI', 3, 7, 3, '2023-11-7'), 
('EXGB' , 'PADELISTI PER CASO', 3, 7, 3, '2023-11-8'), 
('GLI ARCANGELI' , 'FISSOLOGRU PADEL TEAM', 3, 7, 4, '2023-11-13'), 
('ZOOPADEL' , 'OFFICINA DEL PADEL 2.0', 3, 7, 4, '2023-11-13'), 
('LOS CHAVALES' , 'EXGB', 3, 7, 4, '2023-11-13'), 
('PADELISTI PER CASO' , 'I CHIQUITI', 3, 7, 4, '2023-11-13'), 
('OFFICINA DEL PADEL 2.0' , 'GLI ARCANGELI', 3, 7, 5, '2023-11-20'), 
('FISSOLOGRU PADEL TEAM' , 'I CHIQUITI', 3, 7, 5, '2023-11-20'), 
('LOS CHAVALES' , 'PADELISTI PER CASO', 3, 7, 5, '2023-11-21'), 
('EXGB' , 'ZOOPADEL', 3, 7, 5, '2023-11-22'), 
('GLI ARCANGELI' , 'EXGB', 3, 7, 6, '2023-11-27'), 
('ZOOPADEL' , 'LOS CHAVALES', 3, 7, 6, '2023-11-27'), 
('FISSOLOGRU PADEL TEAM' , 'PADELISTI PER CASO', 3, 7, 6, '2023-11-28'), 
('I CHIQUITI' , 'OFFICINA DEL PADEL 2.0', 3, 7, 6, '2023-11-28'), 
('OFFICINA DEL PADEL 2.0' , 'FISSOLOGRU PADEL TEAM', 3, 7, 7, '2023-12-14'), 
('LOS CHAVALES' , 'GLI ARCANGELI', 3, 7, 7, '2023-11-15'), 
('EXGB' , 'I CHIQUITI', 3, 7, 7, '2023-11-15'), 
('PADELISTI PER CASO' , 'ZOOPADEL', 3, 7, 7, '2023-11-15');
SET SESSION "system.db_schema_id" = 39;
select match_date AS DATA, match_day_number AS Giornata, home_team_id AS HID, home_team_name, visitors_team_name   
from sports.matches_view where season_id = 3 and league_id = 7 ORDER BY match_day_number, match_date;

SET SESSION "system.db_schema_id" = 39;
UPDATE sports.matches SET POINTS_HOME = 3, SCORE_HOME = 3, POINTS_VISITORS = 0, SCORE_VISITOR = 0 WHERE 
JGUID = '54c48a96-6b4c-11ee-acf3-0050569bfc1b';

SELECT sports.generate_day_ranking(2::SMALLINT, 7::SMALLINT, 3::SMALLINT); 

SET SESSION "system.db_schema_id" = 39;
SELECT * FROM sports.matches_view WHERE season_iD = 3 AND league_id = 7 AND match_day_number = 2


--8	"GIRONE GINO BMW MINI"
DELETE FROM sports.matches WHERE SEASON_ID = 3 AND LEAGUE_ID = 8; 
DELETE FROM sports.calendar_teams WHERE SEASON_ID = 3 AND LEAGUE_ID = 8; 
SET SESSION "system.db_schema_id" = 39;
INSERT INTO sports.matches_view (home_team_name, visitors_team_name, season_id, league_id, match_day_number, match_date  )
VALUES
('LOS PICANTES ' , 'BAR PEANO', 3, 8, 1, '2023-10-16'), 
('DAMA 3 PADEL' , 'GLI ULTIMI', 3, 8, 1, '2023-10-16'), 
('VISPADELLO ' , 'LE RAGADI', 3, 8, 1, '2023-10-20'), 
('VANGHEL' , 'CREATTIVA', 3, 8, 1, '2023-10-16'), 
('BAR PEANO' , 'VANGHEL', 3, 8, 2, '2023-10-26'), 
('CREATTIVA' , 'VISPADELLO', 3, 8, 2, '2023-10-27'), 
('LE RAGADI' , 'DAMA 3 PADEL', 3, 8, 2, '2023-10-27'), 
('GLI ULTIMI' , 'LOS PICANTES', 3, 8, 2, '2023-10-27'), 
('DAMA 3 PADEL' , 'CREATTIVA', 3, 8, 3, '2023-11-8'), 
('VISPADELLO' , 'BAR PEANO', 3, 8, 3, '2023-11-7'), 
('VANGHEL' , 'LOS PICANTES', 3, 8, 3, '2023-11-8'), 
('LE RAGADI' , 'GLI ULTIMI', 3, 8, 3, '2023-11-9'), 
('LOS PICANTES' , 'VISPADELLO', 3, 8, 4, '2023-11-17'), 
('BAR PEANO' , 'DAMA 3 PADEL', 3, 8, 4, '2023-11-17'), 
('CREATTIVA' , 'LE RAGADI', 3, 8, 4, '2023-11-16'), 
('GLI ULTIMI' , 'VANGHEL', 3, 8, 4, '2023-11-17'), 
('DAMA 3 PADEL' , 'LOS PICANTES', 3, 8, 5, '2023-11-20'), 
('VISPADELLO' , 'VANGHEL', 3, 8, 5, '2023-11-20'), 
('CREATTIVA' , 'GLI ULTIMI', 3, 8, 5, '2023-11-20'), 
('LE RAGADI' , 'BAR PEANO', 3, 8, 5, '2023-11-20'), 
('LOS PICANTES' , 'LE RAGADI', 3, 8, 6, '2023-11-29'), 
('BAR PEANO' , 'CREATTIVA', 3, 8, 6, '2023-11-28'), 
('VISPADELLO' , 'GLI ULTIMI', 3, 8, 6, '2023-12-1'), 
('VANGHEL' , 'DAMA 3 PADEL', 3, 8, 6, '2023-11-30'), 
('DAMA 3 PADEL' , 'VISPADELLO', 3, 8, 7, '2023-12-13'), 
('CREATTIVA' , 'LOS PICANTES', 3, 8, 7, '2023-12-12'), 
('LE RAGADI' , 'VANGHEL', 3, 8, 7, '2023-12-14'), 
('GLI ULTIMI' , 'BAR PEANO', 3, 8, 7, '2023-12-13');
SET SESSION "system.db_schema_id" = 39;
select match_date AS DATA, match_day_number AS Giornata, home_team_id AS HID, home_team_name, visitors_team_name   
from sports.matches_view where season_id = 3 and league_id = 8 ORDER BY match_day_number, match_date, insert_date; 

-- 9	"GIRONE LAB TRAVEL"
DELETE FROM sports.matches WHERE SEASON_ID = 3 AND LEAGUE_ID = 9; 
DELETE FROM sports.calendar_teams WHERE SEASON_ID = 3 AND LEAGUE_ID = 9; 
SET SESSION "system.db_schema_id" = 39;
INSERT INTO sports.matches_view (home_team_name, visitors_team_name, season_id, league_id, match_day_number, match_date  )
VALUES
('A.S. INTOMATICI' , 'OFFICINA DEL PADEL', 3, 9, 1, '2023-10-16'), 
('TEAM BATTILEI' , 'SPADELLATORI BRUTTI', 3, 9, 1, '2023-10-16'), 
('SUMA PADEL TOR' , 'THE OLD MEN', 3, 9, 1, '2023-10-17'), 
('GAME, SET & BEER' , 'SIRPadel', 3, 9, 1, '2023-10-18'), 
('OFFICINA DEL PADEL' , 'GAME, SET & BEER', 3, 9, 2, '2023-10-25'), 
('SIRPadel' , 'SUMA PADEL TOR', 3, 9, 2, '2023-10-24'), 
('THE OLD MEN' , 'TEAM BATTILEI', 3, 9, 2, '2023-10-25'), 
('SPADELLATORI BRUTTI' , 'A.S. INTOMATICI', 3, 9, 2, '2023-10-26'), 
('TEAM BATTILEI' , 'SIRPadel', 3, 9, 3, '2023-11-6'), 
('SUMA PADEL TOR' , 'OFFICINA DEL PADEL', 3, 9, 3, '2023-11-6'), 
('GAME, SET & BEER' , 'A.S. INTOMATICI', 3, 9, 3, '2023-11-6'), 
('THE OLD MEN' , 'SPADELLATORI BRUTTI', 3, 9, 3, '2023-11-6'), 
('A.S. INTOMATICI' , 'SUMA PADEL TOR', 3, 9, 4, '2023-11-15'), 
('OFFICINA DEL PADEL' , 'TEAM BATTILEI ', 3, 9, 4, '2023-11-14'), 
('SIRPadel' , 'THE OLD MEN', 3, 9, 4, '2023-11-15'), 
('SPADELLATORI BRUTTI' , 'GAME, SET & BEER', 3, 9, 4, '2023-11-16'), 
('TEAM BATTILEI' , 'A.S. INTOMATICI', 3, 9, 5, '2023-11-23'), 
('SUMA PADEL TOR' , 'GAME, SET & BEER', 3, 9, 5, '2023-11-24'), 
('SIRPadel' , 'SPADELLATORI BRUTTI', 3, 9, 5, '2023-11-24'), 
('THE OLD MEN' , 'OFFICINA DEL PADEL', 3, 9, 5, '2023-11-24'), 
('A.S. INTOMATICI' , 'THE OLD MEN', 3, 9, 6, '2023-11-30'), 
('OFFICINA DEL PADEL' , 'SIRPadel', 3, 9, 6, '2023-11-29'), 
('SUMA PADEL TOR' , 'SPADELLATORI BRUTTI', 3, 9, 6, '2023-12-1'), 
('GAME, SET & BEER' , 'TEAM BATTILEI ', 3, 9, 6, '2023-12-1'), 
('TEAM BATTILEI' , 'SUMA PADEL TOR', 3, 9, 7, '2023-12-11'), 
('SIRPadel' , 'A.S. INTOMATICI', 3, 9, 7, '2023-12-11'), 
('THE OLD MEN' , 'GAME, SET & BEER', 3, 9, 7, '2023-12-11'), 
('SPADELLATORI BRUTTI' , 'OFFICINA DEL PADEL', 3, 9, 7, '2023-12-11');
SET SESSION "system.db_schema_id" = 39;
select match_date AS DATA, match_day_number AS Giornata, home_team_id AS HID, home_team_name, visitors_team_name   
from sports.matches_view where season_id = 3 and league_id = 9 ORDER BY match_day_number, match_date, insert_date; 

-- 10	"GIRONE CISL" 
DELETE FROM sports.matches WHERE SEASON_ID = 3 AND LEAGUE_ID = 10; 
DELETE FROM sports.calendar_teams WHERE SEASON_ID = 3 AND LEAGUE_ID = 10; 
SET SESSION "system.db_schema_id" = 39;
INSERT INTO sports.matches_view (home_team_name, visitors_team_name, season_id, league_id, match_day_number, match_date  )
VALUES
('PADELVISCUNEO' , '4 SALTI IN PADEL', 3, 10, 1, '2023-10-16'), 
('CARAGLIO RICAMBI OLIMAC' , 'PRATO NEVOSO PADEL', 3, 10, 1, '2023-10-16'), 
('BIG MAC' , 'BAR ENJOY', 3, 10, 1, '2023-10-17'), 
('BUGIA NEN' , 'CUNEO CENTRO ASSICURAZIONI', 3, 10, 1, '2023-10-18'), 
('4 SALTI IN PADEL' , 'BUGIA NEN', 3, 10, 2, '2023-10-25'), 
('CUNEO CENTRO ASSICURAZIONI' , 'BIG MAC', 3, 10, 2, '2023-10-24'), 
('BAR ENJOY' , 'CARAGLIO RICAMBI OLIMAC', 3, 10, 2, '2023-10-25'), 
('PRATO NEVOSO PADEL' , 'PADELVISCUNEO', 3, 10, 2, '2023-10-26'), 
('CARAGLIO RICAMBI OLIMAC' , 'CUNEO CENTRO ASSICURAZIONI', 3, 10, 3, '2023-11-6'), 
('BIG MAC' , '4 SALTI IN PADEL', 3, 10, 3, '2023-11-6'), 
('BUGIA NEN' , 'PADELVISCUNEO', 3, 10, 3, '2023-11-6'), 
('BAR ENJOY' , 'PRATO NEVOSO PADEL', 3, 10, 3, '2023-11-6'), 
('PADELVISCUNEO' , 'BIG MAC', 3, 10, 4, '2023-11-15'), 
('4 SALTI IN PADEL' , 'CARAGLIO RICAMBI OLIMAC', 3, 10, 4, '2023-11-14'), 
('CUNEO CENTRO ASSICURAZIONI' , 'BAR ENJOY', 3, 10, 4, '2023-11-15'), 
('PRATO NEVOSO PADEL' , 'BUGIA NEN', 3, 10, 4, '2023-11-16'), 
('CARAGLIO RICAMBI OLIMAC' , 'PADELVISCUNEO', 3, 10, 5, '2023-11-23'), 
('BIG MAC' , 'BUGIA NEN', 3, 10, 5, '2023-11-24'), 
('CUNEO CENTRO ASSICURAZIONI' , 'PRATO NEVOSO PADEL', 3, 10, 5, '2023-11-24'), 
('BAR ENJOY' , '4 SALTI IN PADEL', 3, 10, 5, '2023-11-24'), 
('PADELVISCUNEO' , 'BAR ENJOY', 3, 10, 6, '2023-11-30'), 
('4 SALTI IN PADEL' , 'CUNEO CENTRO ASSICURAZIONI', 3, 10, 6, '2023-11-29'), 
('BIG MAC' , 'PRATO NEVOSO PADEL', 3, 10, 6, '2023-12-1'), 
('BUGIA NEN' , 'CARAGLIO RICAMBI OLIMAC', 3, 10, 6, '2023-12-1'), 
('CARAGLIO RICAMBI OLIMAC' , 'BIG MAC', 3, 10, 7, '2023-12-11'), 
('CUNEO CENTRO ASSICURAZIONI' , 'PADELVISCUNEO', 3, 10, 7, '2023-12-11'), 
('BAR ENJOY' , 'BUGIA NEN', 3, 10, 7, '2023-12-11'), 
('PRATO NEVOSO PADEL' , '4 SALTI IN PADEL', 3, 10, 7, '2023-12-11'); 
SET SESSION "system.db_schema_id" = 39;
select match_date AS DATA, match_day_number AS Giornata, home_team_id AS HID, home_team_name, visitors_team_name   
from sports.matches_view where season_id = 3 and league_id = 10 ORDER BY match_day_number, match_date, insert_date; 










