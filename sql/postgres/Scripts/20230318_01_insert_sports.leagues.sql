SET SESSION "system.db_schema_id" = 39; 

INSERT INTO sports.leagues(
		 league_name, country_id, league_position, league_code, all_players)
VALUES ( 
	   'Padel Tour Girone A', 
	   1, 
	   10, 
	   'PCA',
	   false	
	);
	
INSERT INTO sports.leagues(
		 league_name, country_id, league_position, league_code, all_players)
VALUES ( 
	   'Padel Tour Girone B', 
	   1, 
	   10, 
	   'PCB',
	   false	
	);
	
SELECT * FROM sports.leagues; 