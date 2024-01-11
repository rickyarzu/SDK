-- FUNCTION: sports.championships_view_trg()

-- DROP FUNCTION IF EXISTS sports.championships_view_trg();

CREATE OR REPLACE FUNCTION sports.championships_view_trg()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
BEGIN
  IF TG_OP = 'UPDATE' THEN 
	  BEGIN
		  UPDATE sports.championships SET
			season_id = Old.season_id,
			league_id = Old.league_id,
			promoted = New.promoted,
			playoff = New.playoff,
			relegation = New.relegation,
			champions = New.champions,
			playout = New.playout,
			teams = New.teams
		  WHERE 
			(jguid = Old.jguid);
	  END; 
  ELSIF TG_OP = 'INSERT' THEN
	  BEGIN
		  if new.jguid is null 
			 then new.jguid = uuid_generate_v4();
		  end if; 
		  IF NEW.db_schema_id IS NULL THEN 
		  	NEW.db_schema_id = current_setting('system.db_schema_id')::integer; 
		  END IF; 
		  
		  
		  
		  INSERT INTO sports.championships (
			season_id,
			league_id,
			promoted,
			playoff,
			relegation,
			champions,
			playout,
			teams,
			jguid  
		  )
		  VALUES (
			New.season_id,
			New.league_id,
			New.promoted,
			New.playoff,
			New.relegation,
			New.champions,
			New.playout,
			New.teams,
			New.jguid
		  ) RETURNING id, jguid into New.id, New.jguid;
	  END; 
  ELSIF TG_OP = 'DELETE' THEN
	  BEGIN
		  DELETE FROM sports.championships
		  WHERE 
			(jguid = Old.jguid);
	  END; 
  END IF; 
  RETURN New; 
END;
$BODY$;

ALTER FUNCTION sports.championships_view_trg()
    OWNER TO ergo;
