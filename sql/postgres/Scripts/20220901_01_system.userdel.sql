CREATE or replace FUNCTION system.userdel(uuid)
    RETURNS boolean
    LANGUAGE 'plpgsql'
    
AS $BODY$
DECLARE
l_user_id integer; 
BEGIN
  SELECT db_user_id INTO l_user_id 
     FROM system.db_users WHERE jguid = p_guid; 
	 
  RETURN system.userdel(l_user_id); 
  
  EXCEPTION WHEN OTHERS THEN
     RETURN false; 

END; 
$BODY$;

ALTER FUNCTION system.userdel(uuid)
    OWNER TO ergo;

COMMENT ON FUNCTION system.userdel(uuid)
    IS 'Delete an user using it''s own UUID';