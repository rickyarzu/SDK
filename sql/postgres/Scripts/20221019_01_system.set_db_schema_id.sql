-- FUNCTION: system.set_schema_id(integer)

DROP FUNCTION IF EXISTS system.set_schema_id(integer);

CREATE OR REPLACE FUNCTION system.set_schema_id(v_id IN integer)
    RETURNS integer
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
DECLARE
	dyn_sql text; 
begin
 dyn_sql := '"SET SESSION "system.db_schema_id" = ' || v_id;
 EXECUTE dyn_sql; 
  return current_setting('system.db_schema_id')::integer;  
end; 
$BODY$;

ALTER FUNCTION system.set_schema_id(integer)
    OWNER TO ergo;
