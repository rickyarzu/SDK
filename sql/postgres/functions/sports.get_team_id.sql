-- FUNCTION: sports.get_team_id()

-- DROP FUNCTION IF EXISTS sports.get_team_id();

CREATE OR REPLACE FUNCTION sports.get_team_id(character varying
	)
    RETURNS integer
    LANGUAGE 'sql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $$
   SELECT team_id::integer AS RESULT
	     FROM sports.teams_championships_view WHERE upper(team_name) = upper($1);
$$;

ALTER FUNCTION sports.get_team_id()
    OWNER TO ergo;
