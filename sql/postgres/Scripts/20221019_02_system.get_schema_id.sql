-- FUNCTION: system.set_schema_id(integer)

DROP FUNCTION IF EXISTS system.get_schema_id();

CREATE OR REPLACE FUNCTION system.get_schema_id()
    RETURNS integer
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
begin
  return current_setting('system.db_schema_id')::integer;  
end; 
$BODY$;

ALTER FUNCTION system.set_schema_id(integer)
    OWNER TO ergo;
