CREATE OR REPLACE FUNCTION sports.generate_ranking(
	p_league_id smallint,
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
	v_pos := 0;  
	
	IF p_season_id = 0 THEN
	  SELECT MAX(id) INTO v_season_id from sports.seasons_view;
	ELSE 
		v_season_id := p_season_id;
	END IF;

    FOR f in select match_day_number from sports.calendar c 
	  where c.season_id = v_season_id and c.league_id = p_league_id
	LOOP
        v_pos := sports.generate_day_ranking(
	             p_day => f.match_day_number,
	             p_league_id => p_league_id,
	             p_season_id => v_season_id);
				 
	END LOOP;
    RETURN v_pos; 
END; 
$BODY$;