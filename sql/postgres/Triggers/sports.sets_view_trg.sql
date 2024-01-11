-- FUNCTION: sports.sets_view_trg()

-- DROP FUNCTION IF EXISTS sports.sets_view_trg();

CREATE OR REPLACE FUNCTION sports.sets_view_trg()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
DECLARE
 v_id integer;
BEGIN

  IF TG_OP = 'UPDATE' THEN 
  UPDATE sports.sets SET
    match_id = New.match_id,
    score_home = New.score_home,
    score_visitors = New.score_visitors,
    remote_id = New.remote_id,
    db_schema_id = New.db_schema_id, 
	number = New.number
  WHERE 
    (jguid = New.jguid) ;
	
  ELSIF TG_OP = 'INSERT' THEN 
  BEGIN
  INSERT INTO sports.sets (
    id,
    match_id,
    score_home,
    score_visitors,
    remote_id,
	number, 
	jguid  
  )
  VALUES (
    New.id,
    New.match_id,
    New.score_home,
    New.score_visitors,
    New.remote_id,
	New.number, 
	New.jguid
  )  RETURNING id, jguid INTO New.id, New.jguid;
 	EXCEPTION 
	   WHEN OTHERS THEN 
	      RAISE EXCEPTION 'sports.sets_view_trg INSERT ERROR match_id = % score_home = % score_visitors = % - % ', 
		    New.match_id, New.score_home, New.score_visitors, SQLERRM;   
  END; 
  
  ELSIF TG_OP = 'DELETE' THEN 
  DELETE FROM sports.sets
  WHERE 
    (jguid = Old.jguid) ;
  END IF; 
  
  RETURN NEW;
END;
$BODY$;

ALTER FUNCTION sports.sets_view_trg()
    OWNER TO ergo;
