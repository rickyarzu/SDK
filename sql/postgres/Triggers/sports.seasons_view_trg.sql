-- FUNCTION: sports.seasons_view_trg()

-- DROP FUNCTION IF EXISTS sports.seasons_view_trg();

CREATE OR REPLACE FUNCTION sports.seasons_view_trg()
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
		  UPDATE sports.seasons SET
			season_des = New.season_des,
			season_code = New.season_code,
			db_schema_id = New.db_schema_id,
			order_number = New.order_number,
			remote_id = New.remote_id
		  WHERE 
			(jguid = New.jguid) ;
	  END; 
  ELSIF TG_OP = 'INSERT' THEN 
	  BEGIN
		  if New.ID is null then
	      	New.ID :=nextval('sports.seasons_seq');
		  end if; 
		  
		  IF NEW.db_schema_id IS NULL THEN 
		  	NEW.db_schema_id = current_setting('system.db_schema_id')::integer; 
		  END IF; 

		  INSERT INTO sports.seasons (
			id,
			season_des,
			season_code,
			db_schema_id,
			order_number,
			remote_id,
			jguid
		  )
		  VALUES (
			New.id,
			New.season_des,
			New.season_code,
			New.db_schema_id,
			New.order_number,
			New.remote_id,
			New.jguid
		  ) RETURNING id, jguid INTO New.id, New.jguid;
	  END; 
  ELSIF TG_OP = 'DELETE' THEN 
	  BEGIN
		DELETE FROM sports.seasons
		WHERE (jguid = Old.jguid) ;
	  END; 
  END IF; 
  RETURN New; 
END;
$BODY$;

ALTER FUNCTION sports.seasons_view_trg()
    OWNER TO ergo;
