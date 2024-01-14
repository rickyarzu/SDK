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
    (3		 , 			11, 		  0,       4, 			0, 			0, 	    4,     8);
INSERT INTO sports.championships_view(
	season_id, league_id, promoted, playoff, relegation , champions	, playout, teams)
VALUES 
    (3		 , 			12, 		  0,       4, 			0, 			0, 	    4,     8);
	
UPDATE sports.championships set db_schema_id = 39 where db_schema_id = 32;
	
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
select * from sports.teams order by team_name; 

SET SESSION "system.db_schema_id" = 39;
SELECT * FROM sports.teams_championships;
SELECT * FROM sports.leagues WHERE Db_schema_id = 39;  


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

SELECT * FROM sports.teams V WHERE season_id = 3 and league_id = 11; 
DELETE FROM system.syslog;
SELECT * FROM system.syslog ORDER BY LOGTIME DESC; 

SET SESSION "system.db_schema_id" = 39;
select * from sports.teams_championships where season_id = 3; 
select * from sports.teams where team_name = 'VANGHEL'; 
select * from sports.calendar; 

-- calendar_view
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
select * from sports.calendar_view where season_id = 3 and league_id = 11; 


--7	"GIRONE PAROLA SPORT"
DELETE FROM sports.matches WHERE SEASON_ID = 3 AND LEAGUE_ID = 11; 
-- DELETE FROM sports.calendar_teams WHERE SEASON_ID = 3 AND LEAGUE_ID = 7; 
SET SESSION "system.db_schema_id" = 39;
INSERT INTO sports.matches_view (home_team_name, visitors_team_name, season_id, league_id, match_day_number, match_date  )
VALUES
('CUNEO CENTRO ASSICURAZIONI' , 'LOS CHAVALES', 3, 11, 1, '2024-1-15'), 
('LOS PICANTES ' , 'TEAM BATTILEI', 3, 11, 1, '2024-1-15'), 
('DAMA3 PADEL ' , 'OFFICINA DEL PADEL', 3, 11, 1, '2024-1-15'), 
('BAR PEANO' , 'PADELVIS CUNEO', 3, 11, 1, '2024-1-16'), 
('CREATTIVA ' , 'A.S. INTOMATICI', 3, 11, 1, '2024-1-17'), 
('GLI ARCANGELI' , 'SUMA PADEL TOR', 3, 11, 1, '2024-1-19'), 
('CARAGLIO RICAMBI IMBIMBOVET' , 'FISSOLOGRU PADEL TEAM', 3, 11, 1, '2024-1-18'), 
('BIG MAC' , 'ZOO PADEL', 3, 11, 1, '2024-1-17'), 
---  2
('LOS CHAVALES' , 'A.S. INTOMATICI', 3, 11, 2, '2024-1-22'), 
('PADELVIS CUNEO' , 'DAMA3 PADEL', 3, 11, 2, '2024-1-26'), 
('CUNEO CENTRO ASSICURAZIONI' , 'ZOO PADEL', 3, 11, 2, '2024-1-22'), 
('SUMA PADEL TOR' , 'FISSOLOGRU PADEL TEAM', 3, 11, 2, '2024-1-23'), 
('BAR PEANO' , 'BIG MAC', 3, 11, 2, '2024-1-24'), 
('CREATTIVA' , 'TEAM BATTILEI', 3, 11, 2, '2024-1-24'), 
('GLI ARCANGELI' , 'CARAGLIO RICAMBI IMBIMBOVET', 3, 11, 2, '2024-1-25'), 
('OFFICINA DEL PADEL' , 'LOS PICANTES', 3, 11, 2, '2024-1-22'), 
---  3
('LOS PICANTES' , 'GLI ARCANGELI', 3, 11, 3, '2024-2-2'), 
('SUMA PADEL TOR' , 'LOS CHAVALES', 3, 11, 3, '2024-1-31'), 
('DAMA3 PADEL' , 'BAR PEANO', 3, 11, 3, '2024-1-29'), 
('TEAM BATTILEI' , 'CUNEO CENTRO ASSICURAZIONI', 3, 11, 3, '2024-1-30'), 
('A.S. INTOMATICI' , 'OFFICINA DEL PADEL', 3, 11, 3, '2024-1-29'), 
('ZOO PADEL' , 'PADELVIS CUNEO', 3, 11, 3, '2024-1-31'), 
('FISSOLOGRU PADEL TEAM' , 'CREATTIVA', 3, 11, 3, '2024-2-1'), 
('BIG MAC' , 'CARAGLIO RICAMBI IMBIMBOVET', 3, 11, 3, '2024-1-29'), 
---  4
('PADELVIS CUNEO' , 'TEAM BATTILEI', 3, 11, 4, '2024-2-5'), 
('CUNEO CENTRO ASSICURAZIONI' , 'A.S. INTOMATICI', 3, 11, 4, '2024-2-7'), 
('LOS PICANTES' , 'FISSOLOGRU PADEL TEAM', 3, 11, 4, '2024-2-5'), 
('BAR PEANO' , 'SUMA PADEL TOR', 3, 11, 4, '2024-2-9'), 
('CREATTIVA' , 'OFFICINA DEL PADEL', 3, 11, 4, '2024-2-5'), 
('GLI ARCANGELI' , 'LOS CHAVALES', 3, 11, 4, '2024-2-7'), 
('CARAGLIO RICAMBI IMBIMBOVET' , 'ZOO PADEL', 3, 11, 4, '2024-2-8'), 
('BIG MAC' , 'DAMA3 PADEL', 3, 11, 4, '2024-2-6'), 
---  5
('LOS CHAVALES' , 'BIG MAC', 3, 11, 5, '2024-2-12'), 
('CUNEO CENTRO ASSICURAZIONI' , 'BAR PEANO', 3, 11, 5, '2024-2-14'), 
('DAMA3 PADEL' , 'TEAM BATTILEI', 3, 11, 5, '2024-2-12'), 
('ZOO PADEL' , 'CREATTIVA', 3, 11, 5, '2024-2-13'), 
('GLI ARCANGELI' , 'PADELVIS CUNEO', 3, 11, 5, '2024-2-14'), 
('OFFICINA DEL PADEL ' , 'SUMA PADEL TOR', 3, 11, 5, '2024-2-12'), 
('FISSOLOGRU PADEL TEAM' , 'A.S. INTOMATICI', 3, 11, 5, '2024-2-15'), 
('CARAGLIO RICAMBI IMBIMBOVET' , 'LOS PICANTES', 3, 11, 5, '2024-2-16'), 
---  6
('PADELVIS CUNEO' , 'LOS PICANTES', 3, 11, 6, '2024-2-19'), 
('SUMA PADEL TOR' , 'ZOO PADEL', 3, 11, 6, '2024-2-19'), 
('BAR PEANO' , 'CARAGLIO RICAMBI IMBIMBOVET', 3, 11, 6, '2024-2-19'), 
('CREATTIVA' , 'CUNEO CENTRO ASSICURAZIONI', 3, 11, 6, '2024-2-20'), 
('TEAM BATTILEI ' , 'FISSOLOGRU PADEL TEAM', 3, 11, 6, '2024-2-21'), 
('A.S. INTOMATICI' , 'DAMA3 PADEL', 3, 11, 6, '2024-2-21'), 
('OFFICINA DEL PADEL' , 'LOS CHAVALES', 3, 11, 6, '2024-2-22'), 
('BIG MAC' , 'GLI ARCANGELI', 3, 11, 6, '2024-2-23'), 
---  7
('LOS CHAVALES' , 'CREATTIVA', 3, 11, 7, '2024-2-26'), 
('CUNEO CENTRO ASSICURAZIONI' , 'PADELVIS CUNEO', 3, 11, 7, '2024-2-26'), 
('LOS PICANTES' , 'BIG MAC', 3, 11, 7, '2024-2-26'), 
('DAMA3 PADEL ' , 'SUMA PADEL TOR', 3, 11, 7, '2024-2-27'), 
('BAR PEANO' , 'A.S. INTOMATICI', 3, 11, 7, '2024-2-28'), 
('ZOO PADEL' , 'TEAM BATTILEI', 3, 11, 7, '2024-2-28'), 
('GLI ARCANGELI' , 'FISSOLOGRU PADEL TEAM', 3, 11, 7, '2024-2-29'), 
('CARAGLIO RICAMBI IMBIMBOVET' , 'OFFICINA DEL PADEL', 3, 11, 7, '2024-3-1'), 
---  8
('LOS CHAVALES' , 'DAMA3 PADEL', 3, 11, 8, '2024-3-4'), 
('PADELVIS CUNEO' , 'BIG MAC', 3, 11, 8, '2024-3-4'), 
('SUMA PADEL TOR' , 'CREATTIVA', 3, 11, 8, '2024-3-4'), 
('TEAM BATTILEI' , 'BAR PEANO', 3, 11, 8, '2024-3-5'), 
('A.S. INTOMATICI ' , 'CARAGLIO RICAMBI IMBIMBOVET', 3, 11, 8, '2024-3-6'), 
('ZOO PADEL' , 'LOS PICANTES', 3, 11, 8, '2024-3-6'), 
('OFFICINA DEL PADEL' , 'GLI ARCANGELI', 3, 11, 8, '2024-3-7'), 
('FISSOLOGRU PADEL TEAM' , 'CUNEO CENTRO ASSICURAZIONI', 3, 11, 8, '2024-3-8'), 
---  9
('LOS PICANTES' , 'BAR PEANO', 3, 11, 9, '2024-3-11'), 
('DAMA3 PADEL' , 'CREATTIVA', 3, 11, 9, '2024-3-11'), 
('TEAM BATTILEI' , 'OFFICINA DEL PADEL', 3, 11, 9, '2024-3-11'), 
('A.S. INTOMATICI' , 'SUMA PADEL TOR', 3, 11, 9, '2024-3-12'), 
('ZOO PADEL' , 'GLI ARCANGELI', 3, 11, 9, '2024-3-13'), 
('FISSOLOGRU PADEL TEAM' , 'LOS CHAVALES', 3, 11, 9, '2024-3-13'), 
('CARAGLIO RICAMBI IMBIMBOVET' , 'PADELVIS CUNEO', 3, 11, 9, '2024-3-14'), 
('BIG MAC' , 'CUNEO CENTRO ASSICURAZIONI', 3, 11, 9, '2024-3-15'), 
--- 10
('LOS CHAVALES' , 'PADELVIS CUNEO', 3, 11, 10, '2024-3-18'), 
('SUMA PADEL TOR' , 'CUNEO CENTRO ASSICURAZIONI', 3, 11, 10, '2024-3-18'), 
('DAMA3 PADEL' , 'CARAGLIO RICAMBI IMBIMBOVET', 3, 11, 10, '2024-3-18'), 
('CREATTIVA' , 'GLI ARCANGELI', 3, 11, 10, '2024-3-19'), 
('TEAM BATTILEI' , 'BIG MAC', 3, 11, 10, '2024-3-20'), 
('A.S. INTOMATICI' , 'LOS PICANTES', 3, 11, 10, '2024-3-20'), 
('OFFICINA DEL PADEL' , 'BAR PEANO', 3, 11, 10, '2024-3-21'), 
('FISSOLOGRU PADEL TEAM' , 'ZOO PADEL', 3, 11, 10, '2024-3-22'), 
--- 11
('PADELVIS CUNEO' , 'FISSOLOGRU PADEL TEAM', 3, 11, 11, '2024-4-8'), 
('CUNEO CENTRO ASSICURAZIONI' , 'OFFICINA DEL PADEL', 3, 11, 11, '2024-4-8'), 
('LOS PICANTES' , 'CREATTIVA', 3, 11, 11, '2024-4-12'), 
('BAR PEANO' , 'LOS CHAVALES', 3, 11, 11, '2024-4-9'), 
('ZOO PADEL' , 'DAMA3 PADEL', 3, 11, 11, '2024-4-10'), 
('GLI ARCANGELI' , 'A.S. INTOMATICI', 3, 11, 11, '2024-4-10'), 
('CARAGLIO RICAMBI IMBIMBOVET ' , 'TEAM BATTILEI', 3, 11, 11, '2024-4-11'), 
('BIG MAC' , 'SUMA PADEL TOR', 3, 11, 11, '2024-4-8'), 
--- 12
('LOS CHAVALES' , 'LOS PICANTES', 3, 11, 12, '2024-4-15'), 
('SUMA PADEL TOR' , 'CARAGLIO RICAMBI IMBIMBOVET', 3, 11, 12, '2024-4-15'), 
('DAMA3 PADEL' , 'CUNEO CENTRO ASSICURAZIONI', 3, 11, 12, '2024-4-15'), 
('CREATTIVA' , 'BAR PEANO', 3, 11, 12, '2024-4-16'), 
('TEAM BATTILEI' , 'GLI ARCANGELI', 3, 11, 12, '2024-4-17'), 
('A.S. INTOMATICI' , 'ZOO PADEL', 3, 11, 12, '2024-4-17'), 
('OFFICINA DEL PADEL' , 'PADELVIS CUNEO', 3, 11, 12, '2024-4-18'), 
('ISSOLOGRU PADEL TEAM' , 'BIG MAC', 3, 11, 12, '2024-4-19'), 
--- 13
('PADELVIS CUNEO' , 'CREATTIVA', 3, 11, 13, '2024-5-6'), 
('LOS PICANTES' , 'SUMA PADEL TOR', 3, 11, 13, '2024-5-6'), 
('BAR PEANO' , 'FISSOLOGRU PADEL TEAM', 3, 11, 13, '2024-5-6'), 
('TEAM BATTILEI' , 'A.S. INTOMATICI', 3, 11, 13, '2024-5-7'), 
('ZOO PADEL' , 'LOS CHAVALES', 3, 11, 13, '2024-5-8'), 
('GLI ARCANGELI' , 'DAMA3 PADEL', 3, 11, 13, '2024-5-8'), 
('CARAGLIO RICAMBI IMBIMBOVET' , 'CUNEO CENTRO ASSICURAZIONI', 3, 11, 13, '2024-5-9'), 
('BIG MAC' , 'OFFICINA DEL PADEL', 3, 11, 13, '2024-5-10'), 
--- 14
('LOS CHAVALES' , 'TEAM BATTILEI', 3, 11, 14, '2024-5-13'), 
('CUNEO CENTRO ASSICURAZIONI' , 'GLI ARCANGELI', 3, 11, 14, '2024-5-17'), 
('SUMA PADEL TOR' , 'PADELVIS CUNEO', 3, 11, 14, '2024-5-13'), 
('DAMA3 PADEL' , 'LOS PICANTES', 3, 11, 14, '2024-5-14'), 
('BAR PEANO' , 'ZOO PADEL', 3, 11, 14, '2024-5-15'), 
('CREATTIVA' , 'CARAGLIO RICAMBI IMBIMBOVET', 3, 11, 14, '2024-5-15'), 
('A.S. INTOMATICI' , 'BIG MAC', 3, 11, 14, '2024-5-16'), 
('OFFICINA DEL PADEL' , 'FISSOLOGRU PADEL TEAM', 3, 11, 14, '2024-5-13'), 
--- 15
('PADELVIS CUNEO' , 'A.S. INTOMATICI', 3, 11, 15, '2024-5-20'), 
('LOS PICANTES' , 'CUNEO CENTRO ASSICURAZIONI', 3, 11, 15, '2024-5-21'), 
('TEAM BATTILEI' , 'SUMA PADEL TOR', 3, 11, 15, '2024-5-24'), 
('ZOO PADEL' , 'OFFICINA DEL PADEL', 3, 11, 15, '2024-5-20'), 
('GLI ARCANGELI' , 'BAR PEANO', 3, 11, 15, '2024-5-22'), 
('FISSOLOGRU PADEL TEAM' , 'DAMA3 PADEL', 3, 11, 15, '2024-5-22'), 
('CARAGLIO RICAMBI IMBIMBOVET' , 'LOS CHAVALES', 3, 11, 15, '2024-5-23'), 
('BIG MAC' , 'CREATTIVA', 3, 11, 15, '2024-5-20');

SET SESSION "system.db_schema_id" = 39;
select match_date AS DATA, match_day_number AS Giornata, home_team_id AS HID, home_team_name, visitors_team_name   
from sports.matches_view where season_id = 3 and league_id = 11 ORDER BY match_day_number, match_date;

SET SESSION "system.db_schema_id" = 39;
UPDATE sports.matches SET POINTS_HOME = 3, SCORE_HOME = 3, POINTS_VISITORS = 0, SCORE_VISITOR = 0 WHERE 
JGUID = '54c48a96-6b4c-11ee-acf3-0050569bfc1b';

SELECT sports.generate_day_ranking(1::SMALLINT, 11::SMALLINT, 3::SMALLINT); 

SET SESSION "system.db_schema_id" = 39;
SELECT * FROM sports.matches_view WHERE season_iD = 3 AND league_id = 7 AND match_day_number = 2

create temporary table tmp_teams ( team_name character varying (128) );

insert into tmp_teams values
('PRATO NEVOSO PADEL'), 
('VISPADELLO'), 
('MUSSO PASTICCERIA'), 
('PADELISTI PER CASO'), 
('I CHIQUITI'), 
('EXGB'), 
('BAR ENJOY'), 
('4 SALTI IN PADEL'), 
('SIRPADEL'), 
('BUGIA NEN '), 
('THE OLD MEN '), 
('SPADELLATORI BRUTTI'), 
('GLI ULTIMI'), 
('LE RAGADI'), 
('OFFICINA DEL PADEL 2.0 '), 
('VANGHEL');

SET SESSION "system.db_schema_id" = 39;
insert into sports.teams_view (team_name)
select team_name from tmp_teams t where not exists
(select 1 from sports.teams s where t.team_name = s.team_name); 

SET SESSION "system.db_schema_id" = 39;
insert into  sports.teams_championships_view (season_id, league_id, team_name   )
VALUES 
(3, 12, 'PRATO NEVOSO PADEL'),
(3, 12, 'VISPADELLO'),
(3, 12, 'MUSSO PASTICCERIA'),
(3, 12, 'PADELISTI PER CASO'),
(3, 12, 'I CHIQUITI'),
(3, 12, 'EXGB'),
(3, 12, 'BAR ENJOY'),
(3, 12, '4 SALTI IN PADEL'),
(3, 12, 'SIRPADEL'),
(3, 12, 'BUGIA NEN '),
(3, 12, 'THE OLD MEN '),
(3, 12, 'SPADELLATORI BRUTTI'),
(3, 12, 'GLI ULTIMI'),
(3, 12, 'LE RAGADI'),
(3, 12, 'OFFICINA DEL PADEL 2.0 '),
(3, 12, 'VANGHEL'); 


-- calendar_view
SET SESSION "system.db_schema_id" = 39;
INSERT INTO sports.calendar_view ( season_id, league_id, match_day_number, match_day_date ) 
VALUES 
(3, 12, 1, '2024-1-19'), 
(3, 12, 2, '2024-1-22'), 
(3, 12, 3, '2024-2-2'),
(3, 12, 4, '2024-2-5'), 
(3, 12, 5, '2024-2-12'), 
(3, 12, 6, '2024-2-23'), 
(3, 12, 7, '2024-2-26'), 
(3, 12, 8, '2024-3-4'), 
(3, 12, 9, '2024-3-11'), 
(3, 12, 10, '2024-3-18'), 
(3, 12, 11, '2024-4-8'), 
(3, 12, 12, '2024-4-15'),
(3, 12, 13, '2024-5-6'),
(3, 12, 14, '2024-5-13'),
(3, 12, 15, '2024-5-20');

select * from sports.calendar_view where season_id = 3 and league_id = 12; 



--8	"GIRONE GINO BMW MINI"
DELETE FROM sports.matches WHERE SEASON_ID = 3 AND LEAGUE_ID = 12; 
DELETE FROM sports.calendar_teams WHERE SEASON_ID = 3 AND LEAGUE_ID = 8; 
SET SESSION "system.db_schema_id" = 39;
INSERT INTO sports.matches_view (home_team_name, visitors_team_name, season_id, league_id, match_day_number, match_date  )
VALUES
('BUGIA NEN' , 'OFFICINA DEL PADEL 2.0', 3, 12, 1, '2024-1-19'), 
('4 SALTI IN PADEL' , 'PADELISTI PER CASO', 3, 12, 1, '2024-1-15'), 
('LE RAGADI' , 'SPADELLATORI BRUTTI', 3, 12, 1, '2024-1-15'), 
('GLI ULTIMI ' , 'PRATO NEVOSO PADEL', 3, 12, 1, '2024-1-17'), 
('VANGHEL' , 'SIRPADEL', 3, 12, 1, '2024-1-16'), 
('I CHIQUITI' , 'THE OLD MEN', 3, 12, 1, '2024-1-18'), 
('BAR ENJOY' , 'EXGB', 3, 12, 1, '2024-1-15'), 
('VISPADELLO' , 'MUSSO PASTICCERIA', 3, 12, 1, '2024-1-19'), 


('OFFICINA DEL PADEL 2.0' , 'SIRPADEL', 3, 12, 2, '2024-1-22'), 
('PRATO NEVOSO PADEL' , 'LE RAGADI', 3, 12, 2, '2024-1-22'), 
('BUGIA NEN' , 'PADELISTI PER CASO', 3, 12, 2, '2024-1-22'), 
('THE OLD MEN' , 'EXGB', 3, 12, 2, '2024-1-24'), 
('GLI ULTIMI' , '4 SALTI IN PADEL', 3, 12, 2, '2024-1-23'), 
('VANGHEL' , 'MUSSO PASTICCERIA', 3, 12, 2, '2024-1-25'), 
('I CHIQUITI' , 'BAR ENJOY', 3, 12, 2, '2024-1-26'), 
('SPADELLATORI BRUTTI' , 'VISPADELLO', 3, 12, 2, '2024-1-26'), 


('VISPADELLO' , ' I CHIQUITI', 3, 12, 3, '2024-2-2'), 
('THE OLD MEN' , 'OFFICINA DEL PADEL 2.0', 3, 12, 3, '2024-1-29'), 
('LE RAGADI' , 'GLI ULTIMI', 3, 12, 3, '2024-1-29'), 
('MUSSO PASTICCERIA' , 'BUGIA NEN', 3, 12, 3, '2024-1-31'), 
('SIRPADEL' , 'SPADELLATORI BRUTTI', 3, 12, 3, '2024-1-30'), 
('PADELISTI PER CASO' , 'PRATO NEVOSO PADEL', 3, 12, 3, '2024-2-1'), 
('EXGB' , 'VANGHEL', 3, 12, 3, '2024-2-2'), 
('4 SALTI IN PADEL' , 'BAR ENJOY', 3, 12, 3, '2024-1-29'), 


('PRATO NEVOSO PADEL' , 'MUSSO PASTICCERIA', 3, 12, 4, '2024-2-5'), 
('BUGIA NEN' , 'SIRPADEL', 3, 12, 4, '2024-2-5'), 
('VISPADELLO' , 'EXGB', 3, 12, 4, '2024-2-9'), 
('GLI ULTIMI' , 'THE OLD MEN', 3, 12, 4, '2024-2-7'), 
('VANGHEL' , 'SPADELLATORI BRUTTI', 3, 12, 4, '2024-2-6'), 
('I CHIQUIT' , 'OFFICINA DEL PADEL 2.0', 3, 12, 4, '2024-2-8'), 
('BAR ENJOY' , 'PADELISTI PER CASO', 3, 12, 4, '2024-2-9'), 
('4 SALTI IN PADEL' , 'LE RAGADI', 3, 12, 4, '2024-2-5'), 


('OFFICINA DEL PADEL 2.0' , '4 SALTI IN PADEL', 3, 12, 5, '2024-2-12'), 
('BUGIA NEN' , 'GLI ULTIMI', 3, 12, 5, '2024-2-12'), 
('LE RAGADI' , 'MUSSO PASTICCERIA', 3, 12, 5, '2024-2-12'), 
('PADELISTI PER CASO' , 'VANGHEL', 3, 12, 5, '2024-2-14'), 
('I CHIQUITI' , 'PRATO NEVOSO PADEL', 3, 12, 5, '2024-2-13'), 
('SPADELLATORI BRUTTI' , 'THE OLD MEN', 3, 12, 5, '2024-2-15'), 
('EXGB' , 'SIRPADEL', 3, 12, 5, '2024-2-16'), 
('BAR ENJOY' , 'VISPADELLO', 3, 12, 5, '2024-2-16'), 


('PRATO NEVOSO PADEL' , 'VISPADELLO', 3, 12, 6, '2024-2-23'), 
('THE OLD MEN' , 'PADELISTI PER CASO', 3, 12, 6, '2024-2-19'), 
('GLI ULTIMI' , 'BAR ENJOY', 3, 12, 6, '2024-2-19'), 
('VANGHEL' , 'BUGIA NEN', 3, 12, 6, '2024-2-21'), 
('MUSSO PASTICCERIA' , 'EXGB', 3, 12, 6, '2024-2-20'), 
('SIRPADEL' , 'LE RAGADI', 3, 12, 6, '2024-2-22'), 
('SPADELLATORI BRUTTI' , 'OFFICINA DEL PADEL 2.0', 3, 12, 6, '2024-2-19'), 
('4 SALTI IN PADEL' , 'I CHIQUITI', 3, 12, 6, '2024-2-23'), 


('OFFICINA DEL PADEL 2.0' , 'VANGHEL', 3, 12, 7, '2024-2-26'), 
('BUGIA NEN' , 'PRATO NEVOSO PADEL', 3, 12, 7, '2024-2-26'), 
('VISPADELLO' , '4 SALTI IN PADEL', 3, 12, 7, '2024-2-26'), 
('LE RAGADI' , 'THE OLD MEN', 3, 12, 7, '2024-2-28'), 
('GLI ULTIMI' , 'SIRPADEL', 3, 12, 7, '2024-2-27'), 
('PADELISTI PER CASO' , 'MUSSO PASTICCERIA', 3, 12, 7, '2024-2-29'), 
('I CHIQUITI' , 'EXGB', 3, 12, 7, '2024-3-1'), 
('BAR ENJOY' , 'SPADELLATORI BRUTTI', 3, 12, 7, '2024-3-1'), 


('OFFICINA DEL PADEL 2.0' , 'LE RAGADI', 3, 12, 8, '2024-3-4'), 
('PRATO NEVOSO PADEL' , '4 SALTI IN PADEL', 3, 12, 8, '2024-3-4'), 
('THE OLD MEN' , 'VANGHEL', 3, 12, 8, '2024-3-4'), 
('MUSSO PASTICCERIA' , 'GLI ULTIMI', 3, 12, 8, '2024-3-6'), 
('SIRPADEL' , 'BAR ENJOY', 3, 12, 8, '2024-3-5'), 
('PADELISTI PER CASO' , 'VISPADELLO', 3, 12, 8, '2024-3-8'), 
('SPADELLATORI BRUTTI' , 'I CHIQUITI', 3, 12, 8, '2024-3-7'), 
('EXGB' , 'BUGIA NEN', 3, 12, 8, '2024-3-8'), 


('VISPADELLO' , 'GLI ULTIMI', 3, 12, 9, '2024-3-11'), 
('LE RAGADI' , 'VANGHEL', 3, 12, 9, '2024-3-11'), 
('MUSSO PASTICCERIA' , 'SPADELLATORI BRUTTI', 3, 12, 9, '2024-3-11'), 
('SIRPADEL' , 'THE OLD MEN', 3, 12, 9, '2024-3-13'), 
('PADELISTI PER CASO ' , ' I CHIQUITI', 3, 12, 9, '2024-3-12'), 
('EXGB' , 'OFFICINA DEL PADEL 2.0', 3, 12, 9, '2024-3-14'), 
('BAR ENJOY' , 'PRATO NEVOSO PADEL', 3, 12, 9, '2024-3-15'), 
('4 SALTI IN PADEL' , 'BUGIA NEN', 3, 12, 9, '2024-3-15'), 


('OFFICINA DEL PADEL 2.0 ' , 'PRATO NEVOSO PADEL', 3, 12, 10, '2024-3-18'), 
('THE OLD MEN ' , 'BUGIA NEN', 3, 12, 10, '2024-3-18'), 
('LE RAGADI' , 'BAR ENJOY', 3, 12, 10, '2024-3-18'), 
('VANGHEL' , 'I CHIQUITI', 3, 12, 10, '2024-3-20'), 
('MUSSO PASTICCERIA' , '4 SALTI IN PADEL', 3, 12, 10, '2024-3-19'), 
('SIRPADEL' , 'VISPADELLO', 3, 12, 10, '2024-3-22'), 
('SPADELLATORI BRUTTI ' , ' GLI ULTIMI', 3, 12, 10, '2024-3-21'), 
('EXGB' , 'ADELISTI PER CASO', 3, 12, 10, '2024-3-22'), 


('PRATO NEVOSO PADEL' , 'EXGB', 3, 12, 11, '2024-4-8'), 
('BUGIA NEN' , 'SPADELLATORI BRUTTI', 3, 12, 11, '2024-4-8'), 
('VISPADELLO' , 'VANGHEL', 3, 12, 11, '2024-4-12'), 
('GLI ULTIMI' , 'OFFICINA DEL PADEL 2.0', 3, 12, 11, '2024-4-10'), 
('PADELISTI PER CASO' , 'LE RAGADI', 3, 12, 11, '2024-4-9'), 
('I CHIQUITI' , 'SIRPADEL', 3, 12, 11, '2024-4-11'), 
('BAR ENJOY ' , 'MUSSO PASTICCERIA', 3, 12, 11, '2024-4-12'), 
('4 SALTI IN PADEL' , 'THE OLD MEN', 3, 12, 11, '2024-4-8'), 


('OFFICINA DEL PADEL 2.0' , 'VISPADELLO', 3, 12, 12, '2024-4-15'), 
('THE OLD MEN' , 'BAR ENJOY', 3, 12, 12, '2024-4-15'), 
('LE RAGADI' , 'BUGIA NEN', 3, 12, 12, '2024-4-15'), 
('VANGHEL' , 'GLI ULTIMI', 3, 12, 12, '2024-4-17'), 
('MUSSO PASTICCERIA' , 'I CHIQUITI', 3, 12, 12, '2024-4-16'), 
('SIRPADEL' , ' PADELISTI PER CASO', 3, 12, 12, '2024-4-18'), 
('SPADELLATORI BRUTTI ' , 'PRATO NEVOSO PADEL', 3, 12, 12, '2024-4-19'), 
('EXGB' , '4 SALTI IN PADEL', 3, 12, 12, '2024-4-19'), 


('PRATO NEVOSO PADEL' , 'VANGHEL', 3, 12, 13, '2024-5-6'), 
('VISPADELLO' , ' THE OLD MEN', 3, 12, 13, '2024-5-10'), 
('GLI ULTIMI' , 'EXGB', 3, 12, 13, '2024-5-6'), 
('MUSSO PASTICCERIA' , 'SIRPADEL', 3, 12, 13, '2024-5-8'), 
('PADELISTI PER CASO' , 'OFFICINA DEL PADEL 2.0', 3, 12, 13, '2024-5-7'), 
('I CHIQUITI' , 'LE RAGADI', 3, 12, 13, '2024-5-9'), 
('BAR ENJOY' , 'BUGIA NEN', 3, 12, 13, '2024-5-6'), 
('4 SALTI IN PADEL' , 'SPADELLATORI BRUTTI', 3, 12, 13, '2024-5-10'), 


('OFFICINA DEL PADEL 2.0 ' , 'MUSSO PASTICCERIA', 3, 12, 14, '2024-5-13'), 
('BUGIA NEN ' , 'I CHIQUITI', 3, 12, 14, '2024-5-13'), 
('THE OLD MEN ' , 'PRATO NEVOSO PADEL', 3, 12, 14, '2024-5-13'), 
('LE RAGADI' , 'VISPADELLO', 3, 12, 14, '2024-5-17'), 
('GLI ULTIMI' , 'PADELISTI PER CASO', 3, 12, 14, '2024-5-14'), 
('VANGHEL' , 'BAR ENJOY', 3, 12, 14, '2024-5-16'), 
('SIRPADEL' , '4 SALTI IN PADEL', 3, 12, 14, '2024-5-15'), 
('SPADELLATORI BRUTTI' , 'EXGB', 3, 12, 14, '2024-5-17'), 


('PRATO NEVOSO PADEL' , 'SIRPADEL', 3, 12, 15, '2024-5-20'), 
('VISPADELLO' , 'BUGIA NEN ', 3, 12, 15, '2024-5-24'), 
('MUSSO PASTICCERIA' , 'THE OLD MEN ', 3, 12, 15, '2024-5-20'), 
('PADELISTI PER CASO' , 'SPADELLATORI BRUTTI', 3, 12, 15, '2024-5-22'), 
('I CHIQUITI' , 'GLI ULTIMI', 3, 12, 15, '2024-5-21'), 
('EXGB' , 'LE RAGADI', 3, 12, 15, '2024-5-23'), 
('BAR ENJOY' , 'OFFICINA DEL PADEL 2.0 ', 3, 12, 15, '2024-5-20'), 
('4 SALTI IN PADEL' , 'VANGHEL', 3, 12, 15, '2024-5-24');

SELECT * FROM  sports.matches_view  where season_id = 3 AND league_id = 12 AND match_day_number = 1 AND home_team_id = 0; 

INSERT INTO sports.matches_view (home_team_name, visitors_team_name, season_id, league_id, match_day_number, match_date  ) VALUES
('LE RAGADI' , 'SPADELLATORI BRUTTI', 3, 12, 1, '2024-1-15');

DELETE FROM sports.matches WHERE ID = 577;

SET SESSION "system.db_schema_id" = 39;
select match_date AS DATA, match_day_number AS Giornata, home_team_id AS HID, home_team_name, visitors_team_name   
from sports.matches_view where season_id = 3 and league_id = 8 ORDER BY match_day_number, match_date, insert_date; 




SET SESSION "system.db_schema_id" = 39;
select match_date AS DATA, match_day_number AS Giornata, home_team_id AS HID, home_team_name, visitors_team_name   
from sports.matches_view where season_id = 3 and league_id = 10 ORDER BY match_day_number, match_date, insert_date; 










