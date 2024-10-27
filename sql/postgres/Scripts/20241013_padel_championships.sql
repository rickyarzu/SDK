SET SESSION "system.db_schema_id" = 39; 

INSERT INTO sports.seasons_view (season_des, season_code)
VALUES ( '2024', '2024');

SET SESSION "system.db_schema_id" = 39; 
SELECT id, season_des, season_code, db_schema_id, order_number, remote_id, jguid, deleted, insert_date, update_date, user_insert, user_update
	FROM sports.seasons_view;
	-- 4 = 2024
	
SELECT * FROM sports.seasons WHERE Db_schema_id = 39; 
	
SET SESSION "system.db_schema_id" = 39; 

INSERT INTO sports.leagues(
		 league_name,         country_id, league_position,         league_code, 		all_players)
VALUES ('OTTICA 10/10',        		1,        	   40,  	                 'O24',        false);

INSERT INTO sports.leagues(
		 league_name,         country_id, league_position,         league_code, 		all_players)
VALUES ('CAF CISL',        				1,        	   40,  	                 'CI24',        false);

INSERT INTO sports.leagues(
		 league_name,         country_id, league_position,         league_code, 		all_players)
VALUES ('OLIMAC',        				1,        	   40,  	                 'OL24',        false);

INSERT INTO sports.leagues(
		 league_name,         country_id, league_position,         league_code, 		all_players)
VALUES ('UNOENERGY',        			1,        	   40,  	                 'UN24',        false);

INSERT INTO sports.leagues(
		 league_name,         country_id, league_position,         league_code, 		all_players)
VALUES ('LABTRAVEL',        			1,        	   40,  	                 'LA24',        false);

INSERT INTO sports.leagues(
		 league_name,         country_id, league_position,         league_code, 		all_players)
VALUES ('PAROLA SPORT',        		1,        	   40,  	                 'PA24',        false);

INSERT INTO sports.leagues(
		 league_name,         country_id, league_position,         league_code, 		all_players)
VALUES ('VITTORIA AC6',        		1,        	   40,  	                 'VI24',        false);

INSERT INTO sports.leagues(
		 league_name,         country_id, league_position,         league_code, 		all_players)
VALUES ('RAVIZZA',        			    1,        	   40,  	                 'RA24',        false);


	
SELECT * FROM sports.leagues WHERE Db_schema_id = 39;  

SELECT * FROM  sports.championships;

SET SESSION "system.db_schema_id" = 39; 

INSERT INTO sports.championships_view(
	season_id, league_id, promoted, playoff, relegation , champions	, playout, teams, db_schema_id)
SELECT 
    4        , 			ID, 	  0,       3, 			0, 			0, 	        3,     6,           39
FROM sports.leagues WHERE Db_schema_id = 39 AND id >= 13;

SELECT * from sports.championships c where c.league_id >= 13;

update sports.championships c set db_schema_id = 39 where db_schema_id = 32;
	
SET SESSION "system.db_schema_id" = 39; 
SELECT season_id, league_id, league_name  FROM sports.championships_VIEW;

---------- 13 ----------------- OTTICA 10/10 ---------------------------------------------------------------------------
SET SESSION "system.db_schema_id" = 39;
INSERT INTO sports.teams_view(team_name) VALUES
('CREATTIVA' ), 
('VISPO ROSSA' ), 
('FASSONE 70 PRO' ), 
('SIR PADEL' ), 
('I CUGINI DI CHAMPAGNE' ), 
('ZOOPADEL' ) ; 
SET SESSION "system.db_schema_id" = 39;

INSERT INTO sports.teams_championships_view(team_name, season_id, league_id)
VALUES
('CREATTIVA' , 4, 13), 
('VISPO ROSSA' , 4, 13), 
('FASSONE 70 PRO' , 4, 13), 
('SIR PADEL' , 4, 13), 
('I CUGINI DI CHAMPAGNE' , 4, 13), 
('ZOOPADEL' , 4, 13);

SET SESSION "system.db_schema_id" = 39;
SELECT * FROM sports.teams_championships_view where league_id = 13;
select * from sports.teams order by team_name; 
SELECT * FROM sports.leagues WHERE Db_schema_id = 39;  
SELECT * FROM system.syslog ORDER BY LOGTIME DESC; 
DELETE FROM system.syslog;


select * from sports.calendar; 

-- calendar_view
SET SESSION "system.db_schema_id" = 39;
INSERT INTO sports.calendar_view ( season_id, league_id, match_day_number, match_day_date ) 
VALUES 
(4, 13, 1, '2024-10-16'), 
(4, 13, 2, '2024-10-21'), 
(4, 13, 3, '2024-11-6'), 
(4, 13, 4, '2024-11-15'), 
(4, 13, 5, '2024-11-19');
update sports.calendar set db_schema_id = 39 where db_schema_id = 32; 

SET SESSION "system.db_schema_id" = 39;
select * from sports.calendar_view where season_id = 4 and league_id = 13; 

--13	"GOTTICA 10/10"
DELETE FROM sports.matches WHERE SEASON_ID = 4 AND LEAGUE_ID = 13; 

SET SESSION "system.db_schema_id" = 39;
INSERT INTO sports.matches_view (home_team_name, visitors_team_name, season_id, league_id, match_day_number, match_date  )
VALUES
-- 1
('CREATTIVA' , 'SIR PADEL', 4, 13, 1, '2024-10-16'), 
('VISPO ROSSA' , 'I CUGINI DI CHAMPAGNE', 4, 13, 1, '2024-10-14'), 
('FASSONE 70 PRO' , 'ZOOPADEL', 4, 13, 1, '2024-10-14'), 
-- 2
('ZOOPADEL' , 'VISPO ROSSA', 4, 13, 2, '2024-10-21'), 
('SIR PADEL' , 'FASSONE 70 PRO', 4, 13, 2, '2024-10-22'), 
('I CUGINI DI CHAMPAGNE' , 'CREATTIVA', 4, 13, 2, '2024-10-25'), 
-- 3
('CREATTIVA' , 'ZOOPADEL', 4, 13, 3, '2024-11-6'), 
('VISPO ROSSA' , 'FASSONE 70 PRO', 4, 13, 3, '2024-11-5'), 
('I CUGINI DI CHAMPAGNE' , 'SIR PADEL', 4, 13, 3, '2024-11-4'), 
-- 4
('ZOOPADEL' , 'I CUGINI DI CHAMPAGNE', 4, 13, 4, '2024-11-15'), 
('VISPO ROSSA' , 'SIR PADEL', 4, 13, 4, '2024-11-12'), 
('FASSONE 70 PRO' , 'CREATTIVA', 4, 13, 4, '2024-11-11'), 
-- 5
('CREATTIVA' , 'VISPO ROSSA', 4, 13, 5, '2024-11-19'), 
('SIR PADEL' , 'ZOOPADEL', 4, 13, 5, '2024-11-20'), 
('I CUGINI DI CHAMPAGNE' , 'FASSONE 70 PRO', 4, 13, 5, '2024-11-18');

SELECT sports.generate_day_ranking(1::SMALLINT, 13::SMALLINT, 4::SMALLINT); 

SET SESSION "system.db_schema_id" = 39;
select match_date AS DATA, match_day_number AS Giornata, home_team_id AS HID, home_team_name, visitors_team_name   
from sports.matches_view where season_id = 4 and league_id = 13 ORDER BY match_day_number, match_date;


---------- 14 ----------------- GIRONE CAF CISL ---------------------------------------------------------------------------
SET SESSION "system.db_schema_id" = 39;
INSERT INTO sports.teams_view(team_name) VALUES
('CUNEO INOX' ), 
('VISPO NERA' ), 
('GLI ULTIMI' ), 
('SOLO SMASH (BURGER)' ), 
('I RACCATTA PALLE' ), 
('CARAGLIO RICAMBI IMBIMBOVET' ) ; 


SET SESSION "system.db_schema_id" = 39;
INSERT INTO sports.teams_championships_view(team_name, season_id, league_id)
VALUES
('CUNEO INOX' , 4, 14), 
('VISPO NERA' , 4, 14), 
('GLI ULTIMI' , 4, 14), 
('SOLO SMASH (BURGER)' , 4, 14), 
('I RACCATTA PALLE' , 4, 14), 
('CARAGLIO RICAMBI IMBIMBOVET' , 4, 14);

SET SESSION "system.db_schema_id" = 39;
SELECT * FROM sports.teams_championships_view where league_id = 14;
select * from sports.teams order by team_name; 
SELECT * FROM sports.leagues WHERE Db_schema_id = 39;  
SELECT * FROM system.syslog ORDER BY LOGTIME DESC; 
DELETE FROM system.syslog;


select * from sports.calendar; 

-- calendar_view
SET SESSION "system.db_schema_id" = 39;
INSERT INTO sports.calendar_view ( season_id, league_id, match_day_number, match_day_date ) 
VALUES 
(4, 14, 1, '2024-10-14'), 
(4, 14, 2, '2024-10-23'), 
(4, 14, 3, '2024-11-6'), 
(4, 14, 4, '2024-11-12'), 
(4, 14, 5, '2024-11-19');
update sports.calendar set db_schema_id = 39 where db_schema_id = 32; 

SET SESSION "system.db_schema_id" = 39;
select * from sports.calendar_view where season_id = 4 and league_id = 14; 

--14	"GIRONE CAF CISL"
DELETE FROM sports.matches WHERE SEASON_ID = 4 AND LEAGUE_ID = 14; 

SET SESSION "system.db_schema_id" = 39;
INSERT INTO sports.matches_view (home_team_name, visitors_team_name, season_id, league_id, match_day_number, match_date  )
VALUES
('CUNEO INOX' , 'SOLO SMASH (BURGER)', 4, 14, 1, '2024-10-14'), 
('VISPO NERA' , 'I RACCATTA PALLE', 4, 14, 1, '2024-10-15'), 
('GLI ULTIMI' , 'CARAGLIO RICAMBI IMBIMBOVET', 4, 14, 1, '2024-10-15'), 
('CARAGLIO RICAMBI IMBIMBOVET' , 'VISPO NERA', 4, 14, 2, '2024-10-23'), 
('SOLO SMASH (BURGER)' , 'GLI ULTIMI', 4, 14, 2, '2024-10-23'), 
('I RACCATTA PALLE' , 'CUNEO INOX', 4, 14, 2, '2024-10-25'), 
('CUNEO INOX' , 'CARAGLIO RICAMBI IMBIMBOVET', 4, 14, 3, '2024-11-6'), 
('VISPO NERA' , 'GLI ULTIMI', 4, 14, 3, '2024-11-6'), 
('I RACCATTA PALLE' , 'SOLO SMASH (BURGER)', 4, 14, 3, '2024-11-7'), 
('CARAGLIO RICAMBI IMBIMBOVET' , 'I RACCATTA PALLE', 4, 14, 4, '2024-11-12'), 
('VISPO NERA' , 'SOLO SMASH (BURGER)', 4, 14, 4, '2024-11-11'), 
('GLI ULTIMI' , 'CUNEO INOX', 4, 14, 4, '2024-11-15'), 
('CUNEO INOX' , 'VISPO NERA', 4, 14, 5, '2024-11-19'), 
('SOLO SMASH (BURGER)' , 'CARAGLIO RICAMBI IMBIMBOVET', 4, 14, 5, '2024-11-18'), 
('I RACCATTA PALLE' , 'GLI ULTIMI', 4, 14, 5, '2024-11-19');

SELECT sports.generate_day_ranking(1::SMALLINT, 14::SMALLINT, 4::SMALLINT); 

SET SESSION "system.db_schema_id" = 39;
select match_date AS DATA, match_day_number AS Giornata, home_team_id AS HID, home_team_name, visitors_team_name   
from sports.matches_view where season_id = 4 and league_id = 13 ORDER BY match_day_number, match_date;


---------- 15 ----------------- GIRONE OLIMAC ---------------------------------------------------------------------------
SET SESSION "system.db_schema_id" = 39;
INSERT INTO sports.teams_view(team_name) VALUES
('FISSOLO GRU PADEL TEAM' ), 
('CONTATTO' ), 
('iRIPARO CUNEO' ), 
('REAL SARAGOZZA' ), 
('REAL OVER' ), 
('LOS PICANTES' ) ; 

SET SESSION "system.db_schema_id" = 39;
INSERT INTO sports.teams_championships_view(team_name, season_id, league_id)
VALUES
('FISSOLO GRU PADEL TEAM' , 4, 15), 
('CONTATTO' , 4, 15), 
('iRIPARO CUNEO' , 4, 15), 
('REAL SARAGOZZA' , 4, 15), 
('REAL OVER' , 4, 15), 
('LOS PICANTES' , 4, 15);

SET SESSION "system.db_schema_id" = 39;
SELECT * FROM sports.teams_championships_view where league_id = 15;
select * from sports.teams order by team_name; 
SELECT * FROM sports.leagues WHERE Db_schema_id = 39;  
SELECT * FROM system.syslog ORDER BY LOGTIME DESC; 
DELETE FROM system.syslog;


select * from sports.calendar; 

-- calendar_view
SET SESSION "system.db_schema_id" = 39;
INSERT INTO sports.calendar_view ( season_id, league_id, match_day_number, match_day_date ) 
VALUES 
(4, 15, 1, '2024-10-14'), 
(4, 15, 2, '2024-10-22'), 
(4, 15, 3, '2024-11-5'), 
(4, 15, 4, '2024-11-11'), 
(4, 15, 5, '2024-11-18');
update sports.calendar set db_schema_id = 39 where db_schema_id = 32; 

SET SESSION "system.db_schema_id" = 39;
select * from sports.calendar_view where season_id = 4 and league_id = 15; 

--15	
DELETE FROM sports.matches WHERE SEASON_ID = 4 AND LEAGUE_ID = 15;

select system.GET_schema_id();

SET SESSION "system.db_schema_id" = 39;
INSERT INTO sports.matches_view (home_team_name, visitors_team_name, season_id, league_id, match_day_number, match_date  )
VALUES
('FISSOLO GRU PADEL TEAM' , 'CONTATTO', 4, 15, 1, '2024-10-14'), 
('iRIPARO CUNEO' , 'REAL SARAGOZZA', 4, 15, 1, '2024-10-18'), 
('REAL OVER' , 'LOS PICANTES', 4, 15, 1, '2024-10-14'), 
('LOS PICANTES' , 'iRIPARO CUNEO', 4, 15, 2, '2024-10-22'), 
('CONTATTO' , 'REAL OVER', 4, 15, 2, '2024-10-22'), 
('REAL SARAGOZZA' , 'FISSOLO GRU PADEL TEAM', 4, 15, 2, '2024-10-21'), 
('FISSOLO GRU PADEL TEAM' , 'LOS PICANTES', 4, 15, 3, '2024-11-5'), 
('iRIPARO CUNEO' , 'REAL OVER', 4, 15, 3, '2024-11-8'), 
('REAL SARAGOZZA' , 'CONTATTO', 4, 15, 3, '2024-11-6'), 
('LOS PICANTES' , 'REAL SARAGOZZA', 4, 15, 4, '2024-11-11'), 
('iRIPARO CUNEO' , 'CONTATTO', 4, 15, 4, '2024-11-13'), 
('REAL OVER' , 'FISSOLO GRU PADEL TEAM', 4, 15, 4, '2024-11-15'), 
('FISSOLO GRU PADEL TEAM' , 'iRIPARO CUNEO', 4, 15, 5, '2024-11-18'), 
('CONTATTO' , 'LOS PICANTES', 4, 15, 5, '2024-11-19'), 
('REAL SARAGOZZA' , 'REAL OVER', 4, 15, 5, '2024-11-18');

SELECT sports.generate_day_ranking(1::SMALLINT, 15::SMALLINT, 4::SMALLINT); 

SET SESSION "system.db_schema_id" = 39;
select match_date AS DATA, match_day_number AS Giornata, home_team_id AS HID, home_team_name, visitors_team_name, db_schema_id   
from sports.matches_view where season_id = 4 and league_id = 15 ORDER BY match_day_number, match_date;

---------- 16 ----------------- GIRONE OLIMAC ---------------------------------------------------------------------------
SET SESSION "system.db_schema_id" = 39;
INSERT INTO sports.teams_view(team_name) VALUES
('FISSOLO GRU PADEL TEAM' ), 
('CONTATTO' ), 
('iRIPARO CUNEO' ), 
('REAL SARAGOZZA' ), 
('REAL OVER' ), 
('LOS PICANTES' ) ; 

SET SESSION "system.db_schema_id" = 39;
INSERT INTO sports.teams_championships_view(team_name, season_id, league_id)
VALUES
('FISSOLO GRU PADEL TEAM' , 4, 15), 
('CONTATTO' , 4, 15), 
('iRIPARO CUNEO' , 4, 15), 
('REAL SARAGOZZA' , 4, 15), 
('REAL OVER' , 4, 15), 
('LOS PICANTES' , 4, 15);

SET SESSION "system.db_schema_id" = 39;
SELECT * FROM sports.teams_championships_view where league_id = 15;
select * from sports.teams order by team_name; 
SELECT * FROM sports.leagues WHERE Db_schema_id = 39;  
SELECT * FROM system.syslog ORDER BY LOGTIME DESC; 
DELETE FROM system.syslog;


select * from sports.calendar; 

-- calendar_view
SET SESSION "system.db_schema_id" = 39;
INSERT INTO sports.calendar_view ( season_id, league_id, match_day_number, match_day_date ) 
VALUES 
(4, 15, 1, '2024-10-14'), 
(4, 15, 2, '2024-10-22'), 
(4, 15, 3, '2024-11-5'), 
(4, 15, 4, '2024-11-11'), 
(4, 15, 5, '2024-11-18');
update sports.calendar set db_schema_id = 39 where db_schema_id = 32; 

SET SESSION "system.db_schema_id" = 39;
select * from sports.calendar_view where season_id = 4 and league_id = 15; 

--15	
DELETE FROM sports.matches WHERE SEASON_ID = 4 AND LEAGUE_ID = 15;

select system.GET_schema_id();

SET SESSION "system.db_schema_id" = 39;
INSERT INTO sports.matches_view (home_team_name, visitors_team_name, season_id, league_id, match_day_number, match_date  )
VALUES
('FISSOLO GRU PADEL TEAM' , 'CONTATTO', 4, 15, 1, '2024-10-14'), 
('iRIPARO CUNEO' , 'REAL SARAGOZZA', 4, 15, 1, '2024-10-18'), 
('REAL OVER' , 'LOS PICANTES', 4, 15, 1, '2024-10-14'), 
('LOS PICANTES' , 'iRIPARO CUNEO', 4, 15, 2, '2024-10-22'), 
('CONTATTO' , 'REAL OVER', 4, 15, 2, '2024-10-22'), 
('REAL SARAGOZZA' , 'FISSOLO GRU PADEL TEAM', 4, 15, 2, '2024-10-21'), 
('FISSOLO GRU PADEL TEAM' , 'LOS PICANTES', 4, 15, 3, '2024-11-5'), 
('iRIPARO CUNEO' , 'REAL OVER', 4, 15, 3, '2024-11-8'), 
('REAL SARAGOZZA' , 'CONTATTO', 4, 15, 3, '2024-11-6'), 
('LOS PICANTES' , 'REAL SARAGOZZA', 4, 15, 4, '2024-11-11'), 
('iRIPARO CUNEO' , 'CONTATTO', 4, 15, 4, '2024-11-13'), 
('REAL OVER' , 'FISSOLO GRU PADEL TEAM', 4, 15, 4, '2024-11-15'), 
('FISSOLO GRU PADEL TEAM' , 'iRIPARO CUNEO', 4, 15, 5, '2024-11-18'), 
('CONTATTO' , 'LOS PICANTES', 4, 15, 5, '2024-11-19'), 
('REAL SARAGOZZA' , 'REAL OVER', 4, 15, 5, '2024-11-18');

SELECT sports.generate_day_ranking(1::SMALLINT, 15::SMALLINT, 4::SMALLINT); 

SET SESSION "system.db_schema_id" = 39;
select match_date AS DATA, match_day_number AS Giornata, home_team_id AS HID, home_team_name, visitors_team_name, db_schema_id   
from sports.matches_view where season_id = 4 and league_id = 15 ORDER BY match_day_number, match_date;







SET SESSION "system.db_schema_id" = 39;
insert into sports.teams_view (team_name)
select team_name from tmp_teams t where not exists
(select 1 from sports.teams s where t.team_name = s.team_name); 

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










