-- FUNCTION: system.get_schema_id()

-- DROP FUNCTION IF EXISTS system.get_schema_id();

CREATE OR REPLACE FUNCTION sports.get_player_group_id(
	)
    RETURNS integer
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
begin
  return current_setting('sports.get_player_group_id')::integer; 
end; 
$BODY$;

ALTER FUNCTION sports.get_player_group_id()
    OWNER TO ergo;
