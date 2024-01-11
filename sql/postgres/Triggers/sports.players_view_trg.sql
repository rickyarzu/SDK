CREATE OR REPLACE FUNCTION sports.players_view_trg()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$
BEGIN
  IF TG_OP = 'UPDATE' THEN 
	BEGIN
	  UPDATE sports.players SET
		anagraph_id = New.anagraph_id,
		birth_date = New.birth_date,
		birth_year = New.birth_year,
		birth_place = New.birth_place,
		notes = New.notes,
		role_id = New.role_id,
		height = New.height,
		weight = New.weight
	  WHERE 
		(jguid = Old.jguid);
	END;
  ELSIF TG_OP = 'INSERT' THEN 
    DECLARE 
      v_id smallint; 
	BEGIN
	  v_id := sports.get_player_group_id(); 
	  IF COALESCE(NEW.anagraph_id, 0) = 0 THEN
		  BEGIN
			New.anagraph_id:=nextval('anagraph.an_anagraph_seq');
			INSERT INTO anagraph.anagraphs_view 
				(anagraph_id, an_name, an_last_name, an_cellular, an_email, an_group_id, an_main_group_id,
				 an_birthdate,   an_birthplace)
			VALUES
				(New.anagraph_id, New.first_name, New.family_name, New.an_cellular, New.an_email, v_id, v_id, 
				 New.birth_date,  New.birth_place);
		  END;  
	  END IF; 
	  INSERT INTO sports.players (
		id,
		anagraph_id,
		birth_year,
		notes,
		role_id,
		height,
		weight,
		remote_id,
		jguid
	  )
	  VALUES (
		New.id,
		New.anagraph_id,
		New.birth_year,
		New.notes,
		New.role_id,
		New.height,
		New.weight,
		New.remote_id,
		New.jguid
	  ) RETURNING id into New.id;
	END;
  ELSIF TG_OP = 'INSERT' THEN 
	BEGIN
	  DELETE FROM sports.players
	  WHERE 
		(jguid = Old.jguid);
	END;
  END IF; 
  RETURN NEW; 
END; 
$function$