-- FUNCTION: sports.add_match_day(integer, integer)

-- DROP FUNCTION IF EXISTS sports.add_match_day(integer, integer);

CREATE OR REPLACE FUNCTION sports.add_match_day(
	p_season_id integer,
	p_league_id integer)
    RETURNS boolean
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
DECLARE
	Result boolean; 
begin
	result := FALSE; 
	IF EXISTS (SELECT 1 FROM sports.championships WHERE
	  season_id = p_season_id AND  league_id = p_league_id )
	THEN 
		DECLARE 
			v_max smallint; 
		BEGIN
		    IF EXISTS (SELECT 1 FROM sports.calendar WHERE season_id = p_season_id AND  league_id = p_league_id) THEN
		  		SELECT MAX(match_day_number) INTO v_max FROM sports.calendar 
		  			WHERE season_id = p_season_id AND  league_id = p_league_id;
				v_max := v_max + 1; 
				INSERT INTO sports.calendar (season_id, league_id, match_day_number, match_day_played)
					VALUES (p_season_id, p_league_id, v_max, NULL );
			ELSE
				INSERT INTO sports.calendar (season_id, league_id, match_day_number, match_day_played)
					VALUES (p_season_id, p_league_id, 1, NULL );			
			END IF; 
		END; 
		Result := True; 
	END IF; 
	
   RETURN Result; 
end; 
$BODY$;

ALTER FUNCTION sports.add_match_day(integer, integer)
    OWNER TO ergo;

COMMENT ON FUNCTION sports.add_match_day(integer, integer)
    IS 'Adds a new Match day to a championhship';
