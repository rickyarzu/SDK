-- FUNCTION: sports.leagues_view_trg()

-- DROP FUNCTION IF EXISTS sports.leagues_view_trg();

CREATE OR REPLACE FUNCTION sports.leagues_view_trg()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
DECLARE
 v_id integer;
BEGIN
  IF TG_OP = 'UPDATE' THEN 
	  BEGIN
		  UPDATE sports.leagues SET
			league_name = New.league_name,
			country_id = New.country_id,
			league_position = New.league_position,
			league_code = New.league_code,
			db_schema_id = New.db_schema_id,
			remote_id = New.remote_id,
			promotedcss = New.promotedcss,
			playoffcss = New.playoffcss,
			championscss = New.championscss,
			playoutcss = New.playoutcss,
			relegationcss = New.relegationcss,
			all_players = New.all_players,
			jguid = New.jguid,
			deleted = New.deleted,
			insert_date = New.insert_date,
			update_date = New.update_date,
			user_insert = New.user_insert,
			user_update = New.user_update
		  WHERE 
			(jguid = New.jguid) ;
	  END; 
  ELSIF TG_OP = 'INSERT' THEN 
	  BEGIN
		  IF NEW.db_schema_id IS NULL  THEN 
		  	NEW.db_schema_id = current_setting('system.db_schema_id')::integer; 
		  END IF; 
		  INSERT INTO sports.leagues (
			id,
			league_name,
			country_id,
			league_position,
			league_code,
			db_schema_id,
			remote_id,
			promotedcss,
			playoffcss,
			championscss,
			playoutcss,
			relegationcss,
			all_players
		  )
		  VALUES (
			New.id,
			New.league_name,
			New.country_id,
			New.league_position,
			New.league_code,
			New.db_schema_id,
			New.remote_id,
			New.promotedcss,
			New.playoffcss,
			New.championscss,
			New.playoutcss,
			New.relegationcss,
			New.all_players
		  ) RETURNING id into v_id;
	  END; 
  ELSIF TG_OP = 'DELETE' THEN 
	  BEGIN
		  DELETE FROM sports.leagues
		  WHERE 
			(jguid = New.jguid) ;
	  END; 
  END IF; 
  Return NEW;
END;
$BODY$;

ALTER FUNCTION sports.leagues_view_trg()
    OWNER TO ergo;
