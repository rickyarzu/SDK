-- FUNCTION: system.assign_anagraphid_to_user(integer, integer)

-- DROP FUNCTION IF EXISTS system.assign_anagraphid_to_user(integer, integer);

CREATE OR REPLACE FUNCTION system.assign_anagraphid_to_user(
	p_anagraph_id integer,
	p_db_user_id integer)
    RETURNS boolean
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
declare 
  Result Boolean; 
begin
  update system.db_users_profiles
    set anagraph_id = p_anagraph_id
  where
     db_user_id = p_db_user_id; 

  Result := p_anagraph_id > 0 and p_db_user_id > 0; 
  
  Return Result; 

end; 
$BODY$;

ALTER FUNCTION system.assign_anagraphid_to_user(integer, integer)
    OWNER TO ergo;
