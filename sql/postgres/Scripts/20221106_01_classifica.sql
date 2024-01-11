CREATE OR REPLACE FUNCTION sports.generate_day_ranking(p_day IN smallint, p_league_id IN smallint = 0, p_season_id IN smallint = 0 ) 
    RETURNS smallint
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS
$$
declare
  f record;
  v_id smallint;
  v_pos smallint;
  v_season_id smallint; 
BEGIN
    v_id := 0;
	v_pos := 0;
	
	IF p_season_id = 0 THEN
	  SELECT MAX(season_id) INTO v_season_id from sports.seasons;
	ELSE 
		v_season_id := p_season_id;
	END IF;
	
	SET SESSION "system.db_schema_id" = 39;
    FOR  f in (
	SELECT
    	count(*) OVER (ORDER BY points DESC, delta DESC, team_name ) rownnum,
		count(*) OVER (ORDER BY points DESC, delta ) pos,
    	season_id, league_id, match_day, team_id, team_name, points, score, conceded, delta
	FROM 
		sports.matchday_table_ranking_base_view
	WHERE 
		match_day = 1
	)
	LOOP
		if f.pos <> v_pos  then
			v_id := v_id + 1;
	  	end if; 
	/*
    sum(v.points) AS points,
    sum(v.score) AS score,
    sum(v.conceded) AS conceded,
    sum((v.score - v.conceded)) AS delta,
    sum(v.match_won) AS match_won,
    sum(v.match_lost) AS match_lost,
    sum(v.match_equal) AS match_equal,	
	*/
	DELETE FROM sports.matchday_ranking WHERE season_id = p_season_id;
	----------------------------------------------------------------------------------------
	INSERT INTO sports.matchday_ranking(
	season_id, league_id, matchday, rownnum, team_id, aggregate_group, rownum, won_matches, lost_matches, tied_matches, points,
	scored, conceded, aggregate_points
		/*
		, , , home_matches, home_won, home_lost, home_tied, 
		outside_played, outside_won, outside_lost, outside_tied, , points_home, points_outside, 
		, scored_home, scored_outside, , conceded_home, conceded_outside, 
		*/
	)
	VALUES 
	(
	    f.season_id, --season_id	
	    f.league_id, --league_id		
	 	f.matchday, --matchday
		f.rownnum, -- rownnum
		f.team_id, --team_id
		f.pos, -- aggregate_group
		f.rownum, -- rownum
		f.match_won, -- won_matches
		f.match_lost, -- lost_matches
		f.tied_matches, -- match_equal
		f.points, -- points
		f.score, -- scored
		f.conceded, -- conceded
		0 --aggregate_points
	);
	----------------------------------------------------------------------------------------
		
	    v_pos := f.pos;		
	END LOOP;

END; 
$$