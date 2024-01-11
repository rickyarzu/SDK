-- FUNCTION: sports.teams_championships_view_trg()

-- DROP FUNCTION IF EXISTS sports.teams_championships_view_trg();

CREATE OR REPLACE FUNCTION sports.teams_championships_view_trg()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
DECLARE
  LOGDATE DATE; 
BEGIN
  LOGDATE := system.setlog(NEW.team_name || ' TRIGGER BEFORE: ' ||  TG_OP); 
  IF TG_OP = 'UPDATE' THEN 
	BEGIN
	  UPDATE sports.teams_championships SET
		season_id = New.season_id,
		league_id = New.league_id,
		team_id = New.team_id,
		position = New.position,
		penalty = New.penalty,
		remote_id = New.remote_id
	  WHERE 
		(jguid = New.jguid) ;
	END;

  ELSIF TG_OP = 'INSERT' THEN 
	DECLARE
		V_ID INTEGER; 
	BEGIN
        -- H.team_name as home_team_name, V.team_name as visitors_team_name 
      IF (NEW.team_id IS NULL OR NEW.team_id = 0) AND NEW.team_name IS NOT NULL THEN
	     LOGDATE := system.setlog(NEW.team_name || ' ID NOT SET'); 
			SELECT V.id INTO v_id 
				FROM sports.teams V WHERE UPPER(TRIM(V.team_name)) = UPPER(TRIM(NEW.team_name));
			IF v_id IS NOT NULL THEN 
				NEW.team_id := v_id; 
			ELSE
			   LOGDATE := system.setlog(NEW.team_name || ' ID NOT FOUND'); 	
			END IF; 	 
      END IF; 
	  
	  if new.jguid is null 
			 then new.jguid = uuid_generate_v4();
	  end if; 
	  
	  IF NEW.db_schema_id IS NULL THEN 
		  	NEW.db_schema_id = current_setting('system.db_schema_id')::integer; 
	  END IF; 
		
	  INSERT INTO sports.teams_championships (
		id,
		season_id,
		league_id,
		team_id,
		position,
		penalty,
		remote_id,
		db_schema_id,
		jguid
	  )
	  VALUES (
		CASE WHEN New.id = 0 THEN NULL ELSE New.id END,
		New.season_id,
		New.league_id,
		New.team_id,
		COALESCE(New.position, 0),
		COALESCE(New.penalty, 0),
		New.remote_id,
		New.db_schema_id,
		New.jguid
	  ) RETURNING id, jguid INTO New.id, New.jguid;
	END;
  ELSIF TG_OP = 'DELETE' THEN 
	BEGIN
	  DELETE FROM sports.teams_championships
	  WHERE 
		(jguid = New.jguid) ;
	END;
	
  END IF;
	
  RETURN NEW; 
	
END; 
$BODY$;

ALTER FUNCTION sports.teams_championships_view_trg()
    OWNER TO ergo;
