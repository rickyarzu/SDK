-- FUNCTION: sports.clubs_view_trg()

-- DROP FUNCTION IF EXISTS sports.clubs_view_trg();

CREATE OR REPLACE FUNCTION sports.clubs_view_trg()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
BEGIN

  IF TG_OP = 'UPDATE' THEN 
  UPDATE sports.clubs SET
    club_name = New.club_name,
    foundation_date = New.foundation_date,
    president = New.president,
    stadium_id = New.stadium_id,
    town = New.town,
    vice_president = New.vice_president,
    team_manager = New.team_manager,
    athletic_manager = New.athletic_manager,
    colors = New.colors,
    website = New.website,
    remote_id = New.remote_id,
    anagraph_id = New.anagraph_id,
    club_image = New.club_image
  WHERE 
    (jguid = New.jguid) ;
	
  ELSIF TG_OP = 'INSERT' THEN 
  BEGIN
  if New.id IS NULL THEN New.id = nextval('sports.clubs_seq'); END IF; 
  INSERT INTO sports.clubs (
    id,
    club_name,
    foundation_date,
    president,
    stadium_id,
    town,
    vice_president,
    team_manager,
    athletic_manager,
    colors,
    website,
    remote_id,
    anagraph_id,
    club_image,
	jguid  
  )
  VALUES (
    New.id,
    New.club_name,
    New.foundation_date,
    New.president,
    New.stadium_id,
    New.town,
    New.vice_president,
    New.team_manager,
    New.athletic_manager,
    New.colors,
    New.website,
    New.remote_id,
    New.anagraph_id,
    New.club_image,
	New.jguid
  ) RETURNING id into New.id;
  END; 
  
  ELSIF TG_OP = 'DELETE' THEN 
  DELETE FROM sports.clubs
  WHERE 
    (jguid = Old.jguid) ;
  END IF; 
  
  RETURN New; 
  
END;
$BODY$;

ALTER FUNCTION sports.clubs_view_trg()
    OWNER TO ergo;
