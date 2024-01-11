-- FUNCTION: sports.matches_view_trg()

-- DROP FUNCTION IF EXISTS sports.matches_view_trg();

CREATE OR REPLACE FUNCTION sports.matches_view_trg()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
DECLARE
 v_id integer;
BEGIN
  IF TG_OP = 'UPDATE' THEN 
  UPDATE sports.matches SET
    league_id = New.league_id,
    season_id = New.season_id,
    match_day_number = New.match_day_number,
    match_time = New.match_time,
    match_date = New.match_date,
    home_team_id = New.home_team_id,
    visitors_team_id = New.visitors_team_id,
    score_home = New.score_home,
    score_visitor = New.score_visitor,
    points_home = New.points_home,
    points_visitors = New.points_visitors,
    notes = New.notes,
    confirmed = New.confirmed,
    home_notes = New.home_notes,
    visitors_notes = New.visitors_notes,
    suspended = New.suspended,
    postponed = New.postponed,
    forfeit = New.forfeit,
    remote_id = New.remote_id,
    field_id = New.field_id,
    article_url = New.article_url,
    video_url = New.video_url
  WHERE 
    (jguid = New.jguid) ;
  ELSIF TG_OP = 'INSERT' THEN 
  	DECLARE
	  v_id integer; 
  	BEGIN
	-- H.team_name as home_team_name, V.team_name as visitors_team_name 
    IF NEW.home_team_id IS NULL OR NEW.home_team_id = 0 THEN
	  SELECT V.team_id INTO v_id 
	     FROM sports.teams_championships_view V WHERE V.team_name = NEW.home_team_name;
	  NEW.home_team_id := v_id;	 
	END IF; 
	
	INSERT INTO sports.calendar_teams(season_id,league_id,match_day, team_id )
		VALUES( New.season_id, New.league_id, New.match_day_number,  NEW.home_team_id); 
	
    IF NEW.visitors_team_id IS NULL OR NEW.home_team_id = 0 THEN
	  SELECT V.team_id INTO v_id 
	     FROM sports.teams_championships_view V WHERE V.team_name = NEW.visitors_team_name;
	  NEW.visitors_team_id := v_id;	 
	END IF; 
	
	INSERT INTO sports.calendar_teams(season_id,league_id,match_day, team_id )
		VALUES( New.season_id, New.league_id, New.match_day_number,  NEW.visitors_team_id); 
	
	IF New.forfeit IS NULL THEN New.forfeit := False; END IF; 
	
	
  	INSERT INTO sports.matches (
    id,
    league_id,
    season_id,
    match_day_number,
    match_time,
    match_date,
    home_team_id,
    visitors_team_id,
    score_home,
    score_visitor,
    points_home,
    points_visitors,
    notes,
    confirmed,
    home_notes,
    visitors_notes,
    suspended,
    postponed,
    forfeit,
    remote_id,
    field_id,
    article_url,
    video_url  )
  	VALUES (
    New.id,
    New.league_id,
    New.season_id,
    New.match_day_number,
    New.match_time,
    New.match_date,
    New.home_team_id,
    New.visitors_team_id,
    New.score_home,
    New.score_visitor,
    New.points_home,
    New.points_visitors,
    New.notes,
    New.confirmed,
    New.home_notes,
    New.visitors_notes,
    New.suspended,
    New.postponed,
    New.forfeit,
    New.remote_id,
    New.field_id,
    New.article_url,
    New.video_url  );
	
  END; 
  ELSIF TG_OP = 'DELETE' THEN 
  	BEGIN
  		DELETE FROM sports.matches
  			WHERE (jguid = Old.jguid) ;
		DELETE FROM sports.calendar_teams WHERE 
			season_id  = OLD.season_id AND league_id = OLD.league_id AND   match_day = OLD.match_day_number AND  team_id = OLD.home_team_id; 
		DELETE FROM sports.calendar_teams WHERE 
			season_id  = OLD.season_id AND league_id = OLD.league_id AND   match_day = OLD.match_day_number AND  team_id = OLD.visitors_team_id; 
	END;
  END IF; 
  RETURN NEW; 
END;
$BODY$;

ALTER FUNCTION sports.matches_view_trg()
    OWNER TO ergo;
