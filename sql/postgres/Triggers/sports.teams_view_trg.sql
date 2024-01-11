-- FUNCTION: sports.teams_view_trg()

-- DROP FUNCTION IF EXISTS sports.teams_view_trg();

CREATE OR REPLACE FUNCTION sports.teams_view_trg()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
DECLARE
 v_id integer;
BEGIN
IF TG_OP = 'UPDATE' THEN 
  UPDATE sports.teams SET
    club_id = New.club_id,
    team_name = TRIM(New.team_name),
    trainer_id = New.trainer_id,
    image = New.image
  WHERE 
    (id = New.id) ;
  ELSIF TG_OP = 'INSERT' THEN 
  	DECLARE
    	V_CLUB_ID INTEGER; 
  	BEGIN
		IF NOT EXISTS (
				SELECT 1 FROM sports.teams t where LOWER(TRIM(team_name)) = LOWER(TRIM(New.team_name))
		) THEN
			IF New.club_id = 0 or New.club_id IS NULL then 
				insert into sports.clubs_view (club_name) values (New.team_name) 
					RETURNING id INTO V_CLUB_ID; 
				New.club_id = V_CLUB_ID; 
			END IF; 
			if New.id IS NULL THEN New.id = nextval('sports.teams_seq'); END IF; 	
			IF NEW.db_schema_id IS NULL  THEN 
				NEW.db_schema_id = current_setting('system.db_schema_id')::integer; 
			END IF; 
			INSERT INTO sports.teams (
				id,
				club_id,
				team_name,
				trainer_id,
				image,
				remote_id
			)
			VALUES (
				New.id,
				New.club_id,
				TRIM(New.team_name),
				New.trainer_id,
				New.image,
				New.remote_id  
			);
		END IF;  
  	END; 
  ELSIF TG_OP = 'UPDATE' THEN 
	  BEGIN
		  DELETE FROM sports.teams
		  WHERE 
			(id = New.id) ;
	  END; 
  END IF;
  
  RETURN New; 
END;
$BODY$;

ALTER FUNCTION sports.teams_view_trg()
    OWNER TO ergo;
