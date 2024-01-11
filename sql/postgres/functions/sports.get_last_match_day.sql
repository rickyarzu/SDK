-- FUNCTION: sports.get_last_match_day(smallint, smallint)

-- DROP FUNCTION IF EXISTS sports.get_last_match_day(smallint, smallint);

CREATE OR REPLACE FUNCTION sports.get_last_match_day(
	p_season_id smallint,
	p_league_id smallint)
    RETURNS smallint
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
DECLARE
  result smallint; 
BEGIN
	BEGIN
  		SELECT coalesce(max(match_day_number), 1) into result
  		FROM 
	  		sports.matches m
	 	WHERE
	 		m.season_id = p_season_id AND m.league_id = p_league_id
			AND m.confirmed
			AND m.db_schema_id = system.get_schema_id();
   	EXCEPTION WHEN OTHERS THEN
		result := 1;
	END;
	
	RETURN result; 
END; 
$BODY$;

ALTER FUNCTION sports.get_last_match_day(smallint, smallint)
    OWNER TO ergo;
