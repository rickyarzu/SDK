-- FUNCTION: sports.generate_day_ranking(smallint, smallint, smallint)

-- DROP FUNCTION IF EXISTS sports.generate_day_ranking(smallint, smallint, smallint);

CREATE OR REPLACE FUNCTION sports.generate_day_ranking(
	p_day smallint,
	p_league_id smallint DEFAULT 0,
	p_season_id smallint DEFAULT 0)
    RETURNS smallint
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
declare
  f record;
  v_id smallint;
  v_pos smallint;
  v_season_id smallint; 
  v_notes character varying;
BEGIN
    v_id := 0;     
	v_pos := 0;  
	
	IF p_season_id = 0 THEN
	  SELECT MAX(id) INTO v_season_id from sports.seasons_view;
	ELSE 
		v_season_id := p_season_id;
	END IF;
	
  delete from sports.calendar_teams v where not exists 
  (select 1 from sports.matchday_scores_view t
   	where 
   	v.match_day = t.match_day_number and t.league_id = v.league_id and t.team_id = v.team_id 
   );
   
   
  insert into sports.calendar_teams (league_id, season_id, match_day, team_id)	
  select league_id, season_id, match_day_number, team_id from sports.matchday_scores_view v  where not exists
  (select 1 from sports.calendar_teams t
   	where 
   	match_day = V.match_day_number and t.league_id = V.LEAGUE_ID and t.team_id = v.team_id 
   )
   AND TEAM_ID > 0;
	

	DELETE FROM sports.matchday_ranking 
		WHERE season_id = v_season_id and league_id = p_league_id AND  matchday = p_day;
	
    FOR  f in (
	SELECT
    	count(*) OVER (ORDER BY points DESC, games_delta DESC, team_name ) rownum,
		count(*) OVER (ORDER BY points DESC, games_delta DESC ) pos,
    	v.*
	FROM 
		sports.matchday_table_ranking_base_view v, 
		(select team_id, max (MATCH_DAY) as mday from sports.calendar_teams t  
		    WHERE t.season_id = v_season_id and t.league_id = p_league_id and match_day <= p_day
		 group by team_id ) C
	WHERE 
		v.season_id = v_season_id and v.league_id = p_league_id AND  
		v.match_day = C.mday AND v.team_id = c.team_id
	ORDER BY ROWNUM
	)
	LOOP
	v_id := v_id + 1;
	----------------------------------------------------------------------------------------
	INSERT INTO sports.matchday_ranking(
	season_id, league_id, matchday,  team_id, aggregate_group, rownum, won_matches, lost_matches, tied_matches, points,
	scored, conceded, aggregate_points, pos,  games_scored, games_conceded, db_schema_id, played, notes
	)
	VALUES 
	(
	    v_season_id, --season_id	
	    p_league_id, --league_id		
	 	p_day, --matchday
		f.team_id, --team_id
		f.pos, -- aggregate_group
		f.rownum, -- rownum
		f.match_won, -- won_matches
		f.match_lost, -- lost_matches
		f.match_equal, -- match_equal
		f.points, -- points
		f.score, -- scored
		f.conceded, -- conceded
		0, --aggregate_points
		v_id, --pos
		f.games_scored, 
		f.games_conceded, 
		system.get_schema_id(),
		f.played,
		v_notes
	);
	----------------------------------------------------------------------------------------
		
	    v_pos := f.pos;		
	END LOOP;
    RETURN v_pos; 
END; 
$BODY$;

ALTER FUNCTION sports.generate_day_ranking(smallint, smallint, smallint)
    OWNER TO ergo;
