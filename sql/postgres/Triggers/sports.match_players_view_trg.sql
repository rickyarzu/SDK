CREATE OR REPLACE FUNCTION sports.match_players_view_trg ()
RETURNS TRIGGER
AS
$$
BEGIN
  IF TG_OP = 'UPDATE' THEN 
	BEGIN
	  UPDATE sports.match_players SET
		match_id = New.match_id,
		player_id = New.player_id,
		minutes = New.minutes,
		vote = New.vote,
		played = New.played,
		team_id = New.team_id,
		pos = New.pos,
		subst_id = New.subst_id,
		score = New.score,
		self_score = New.self_score,
		conceded = New.conceded,
		since = New.since,
		until = New.until,
		sent_off = New.sent_off,
		injuries = New.injuries
	  WHERE 
		(jguid = New.jguid) ;
    END;
  ELSIF TG_OP = 'INSERT' THEN 	
	BEGIN
	  INSERT INTO sports.match_players (
		id,
		match_id,
		player_id,
		minutes,
		vote,
		played,
		team_id,
		pos,
		subst_id,
		score,
		self_score,
		conceded,
		since,
		until,
		sent_off,
		injuries,
		jguid
	  )
	  VALUES (
		New.id,
		New.match_id,
		New.player_id,
		New.minutes,
		New.vote,
		New.played,
		New.team_id,
		New.pos,
		New.subst_id,
		New.score,
		New.self_score,
		New.conceded,
		New.since,
		New.until,
		New.sent_off,
		New.injuries,
		New.jguid
	  );
	END;
  ELSIF TG_OP = 'DELETE' THEN 
	BEGIN
	  DELETE FROM sports.match_players
	  WHERE 
		(jguid = Old.jguid) ;
	END;
  END IF;
  RETURN NEW; 
END;
$$
LANGUAGE 'plpgsql';