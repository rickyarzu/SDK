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
 LOGDATE DATE; 
BEGIN
  LOGDATE := system.setlog(TG_OP || ' RECORD: ' || NEW.home_team_name  || ' - ' || NEW.visitors_team_name ); 
  IF TG_OP = 'UPDATE' THEN 
  BEGIN
  -- I mantain always 'old' jguid and try to never change it
  New.jguid := Old.jguid; 
  
  IF NEW.db_schema_id IS NULL  THEN 
	NEW.db_schema_id = current_setting('system.db_schema_id')::integer; 
  END IF; 
  
  New.points_home:=  New.score_home; 
  New.points_visitors := New.score_visitor ; 	
  
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
    points_home = New.score_home, --New.points_home,
    points_visitors = New.score_visitor, --New.points_visitors,
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
    (jguid = Old.jguid) ;
  	IF NEW.score_home <> OLD.score_home OR NEW.score_visitor <> OLD.score_visitor THEN	
    	SELECT sports.generate_day_ranking(New.match_day_number::smallint, New.league_id::smallint, New.season_id::smallint);
  	END IF; 
  END; 
  ELSIF TG_OP = 'INSERT' THEN 
  	DECLARE
	  v_id integer; 
  	BEGIN
		IF NEW.db_schema_id IS NULL  THEN 
		  	NEW.db_schema_id = current_setting('system.db_schema_id')::integer; 
		END IF; 
		  
        -- H.team_name as home_team_name, V.team_name as visitors_team_name 
        IF (NEW.home_team_id IS NULL OR NEW.home_team_id = 0) AND NEW.home_team_name IS NOT NULL THEN
        SELECT V.team_id INTO v_id 
            FROM sports.teams_championships_view V WHERE UPPER(TRIM(V.team_name)) = UPPER(TRIM(NEW.home_team_name));
        IF v_id IS NOT NULL THEN NEW.home_team_id := v_id; END IF; 	 
        END IF; 
        
        IF NEW.home_team_id IS NOT NULL THEN 
            INSERT INTO sports.calendar_teams(season_id,league_id,match_day, team_id )
                VALUES( New.season_id, New.league_id, New.match_day_number,  NEW.home_team_id); 
		ELSE
		  NEW.home_team_id := 0;
        END IF; 
        
        IF (NEW.visitors_team_id IS NULL OR NEW.visitors_team_id = 0) AND NEW.visitors_team_name IS NOT NULL THEN
        SELECT V.team_id INTO v_id 
            FROM sports.teams_championships_view V WHERE UPPER(TRIM(V.team_name)) = UPPER(TRIM(NEW.visitors_team_name));
        IF v_id IS NOT NULL THEN  NEW.visitors_team_id := v_id;	END IF; 
        END IF; 

        IF NEW.visitors_team_id IS NOT NULL AND NEW.visitors_team_id > 0 THEN
            INSERT INTO sports.calendar_teams(season_id,league_id,match_day, team_id )
                VALUES( New.season_id, New.league_id, New.match_day_number,  NEW.visitors_team_id); 
		ELSE
		  NEW.visitors_team_id := 0;
        END IF; 
        
        IF New.forfeit IS NULL THEN New.forfeit := False; END IF; 
		
        New.points_home:=  New.score_home; 
        New.points_visitors := New.score_visitor ; 		
        
        
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
        video_url,
		jguid)
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
        New.video_url,
		New.jguid);
		
 	EXCEPTION 
	   WHEN OTHERS THEN 
	      RAISE EXCEPTION 'sports.matches_view_trg INSERT ERROR season_id = % league_id = % match_day = % HomeID = % VisitID = %  -  %', 
		    New.season_id, New.league_id, New.match_day_number, New.home_team_id, NEW.visitors_team_id, SQLERRM;       
  END; 
  
  ELSIF TG_OP = 'DELETE' THEN 
  	BEGIN
  		DELETE FROM sports.matches
  			WHERE (jguid = Old.jguid) ;
		DELETE FROM sports.calendar_teams WHERE 
			season_id  = New.season_id AND league_id = New.league_id AND   match_day = New.match_day_number AND  team_id = NEW.visitors_team_id; 
	END;
  END IF; 
  RETURN NEW; 
END;
$BODY$;

ALTER FUNCTION sports.matches_view_trg()
    OWNER TO ergo;
