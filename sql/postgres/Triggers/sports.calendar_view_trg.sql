-- FUNCTION: sports.calendar_view_trg()

-- DROP FUNCTION IF EXISTS sports.calendar_view_trg();

CREATE OR REPLACE FUNCTION sports.calendar_view_trg()
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
		  UPDATE sports.calendar SET
			match_day_date = New.match_day_date,
			match_day_played = New.match_day_played,
			rest_team_id = New.rest_team_id
		  WHERE 
			(season_id = New.season_id) AND
			(league_id = New.league_id) AND
			(match_day_number = New.match_day_number);
	  END; 
  ELSIF TG_OP = 'INSERT' THEN 
	  BEGIN
		  if new.jguid is null 
			 then new.jguid = uuid_generate_v4();
		  end if; 
		  IF NEW.db_schema_id IS NULL THEN 
		  	NEW.db_schema_id = current_setting('system.db_schema_id')::integer; 
		  END IF; 
		  INSERT INTO sports.calendar (
			season_id,
			league_id,
			match_day_number,
			match_day_date,
			match_day_played,
			rest_team_id
		  )
		  VALUES (
			New.season_id,
			New.league_id,
			New.match_day_number,
			New.match_day_date,
			New.match_day_played,
			New.rest_team_id
		  ) RETURNING id into v_id;
	  END; 
  ELSIF TG_OP = 'DELETE' THEN
	  BEGIN
		  DELETE FROM sports.calendar
		  WHERE 
			(season_id = New.season_id) AND
			(league_id = New.league_id) AND
			(match_day_number = New.match_day_number);
	  END; 
  END IF; 
RETURN New; 
END;
$BODY$;

ALTER FUNCTION sports.calendar_view_trg()
    OWNER TO ergo;
