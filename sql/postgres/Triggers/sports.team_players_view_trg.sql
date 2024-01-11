-- FUNCTION: sports.team_players_view_trg()

-- DROP FUNCTION IF EXISTS sports.team_players_view_trg();

CREATE OR REPLACE FUNCTION sports.team_players_view_trg()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
BEGIN
	IF TG_OP = 'UPDATE' THEN 
		BEGIN
		  UPDATE sports.team_players SET
			team_id = New.team_id,
			player_id = New.player_id,
			season_id = New.season_id,
			since = New.since,
			until = New.until,
			club_origin_id = New.club_origin_id,
			scored = New.scored,
			self_scored = New.self_scored,
			conceded = New.conceded,
			sent_off = New.sent_off,
			injuries = New.injuries,
			minutes = New.minutes,
			matches = New.matches,
			score = New.score,
			votes = New.votes,
			remote_id = New.remote_id
		  WHERE 
			(jguid = New.jguid) ;
		END;
	ELSIF TG_OP = 'INSERT' THEN 
		BEGIN
		  IF NEW.player_id IS NULL THEN
		    INSERT INTO sports.players_view (
				 notes, 
				 weight, 
				 an_cellular, 
				 first_name, 
				 family_name, 
				 an_email, 
				 role_id,
				 birth_year, 
				 birth_place,
				 birth_date
			 )
			 VALUES
			 ( 
				 NEW.notes, 
				 NEW.weight, 
				 NEW.an_cellular, 
				 NEW.first_name, 
				 NEW.family_name, 
				 NEW.an_email, 
				 coalesce (NEW.role_id, 0),
				 NEW.birth_year, 
				 NEW.birth_place,
				 NEW.birth_date
			) RETURNING id INTO NEW.player_id; 
		  END IF; 
		  
		  INSERT INTO sports.team_players (
			id,
			team_id,
			player_id,
			season_id,
			since,
			until,
			club_origin_id,
			scored,
			self_scored,
			conceded,
			sent_off,
			injuries,
			minutes,
			matches,
			score,
			votes,
			remote_id,
			jguid  
		  )
		  VALUES (
			New.id,
			New.team_id,
			New.player_id,
			New.season_id,
			New.since,
			New.until,
			New.club_origin_id,
			New.scored,
			New.self_scored,
			New.conceded,
			New.sent_off,
			New.injuries,
			New.minutes,
			New.matches,
			New.score,
			New.votes,
			New.remote_id,
			New.jguid  
		  ) RETURNING id, jguid INTO New.id, New.jguid;
		END;
	ELSIF TG_OP = 'DELETE' THEN 
		BEGIN
		  DELETE FROM sports.team_players
		  WHERE 
			jguid = coalesce(New.jguid, Old.jguid) ;
		END;
	END IF; 
	
	RETURN NEW; 
END; 
$BODY$;

ALTER FUNCTION sports.team_players_view_trg()
    OWNER TO ergo;
