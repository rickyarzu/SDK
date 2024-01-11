-- FUNCTION: system.userdel(integer)

-- DROP FUNCTION IF EXISTS system.userdel(integer);

CREATE OR REPLACE FUNCTION system.userdel(p_user_email character varying)
    RETURNS boolean
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
DECLARE
  V_ID integer;
BEGIN
   -- 
   IF EXISTS (SELECT 1 from system.db_users where email = lower(p_user_email) ) THEN
   	BEGIN
	  SELECT db_user_id INTO V_ID from system.db_users where email = lower(p_user_email);
      return system.userdel(V_ID); 
   	END;
   ELSE
   	BEGIN
      PERFORM system.setlog('db_user NOT FOUND: ' || p_user_email);
	  return False;    
   	END; 
   END IF; 
END; 

$BODY$;

ALTER FUNCTION system.userdel(integer)
    OWNER TO ergo;
