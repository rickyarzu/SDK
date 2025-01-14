-- FUNCTION: sports.roles_view_trg()

-- DROP FUNCTION IF EXISTS sports.roles_view_trg();

CREATE OR REPLACE FUNCTION sports.roles_view_trg()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
DECLARE
 v_id integer;
BEGIN
-- role_code
-- role_name

  IF TG_OP = 'UPDATE' THEN 
  UPDATE sports.roles SET
    role_name = New.role_name,
    role_code = New.role_code
  WHERE 
    (jguid = New.jguid) ;
  ELSIF TG_OP = 'INSERT' THEN 
  BEGIN
  
  if New.id IS NULL THEN New.id = nextval('sports.roles_seq'); END IF; 
  
  INSERT INTO sports.roles (
    id,
    role_name,
    role_code
  )
  VALUES (
    New.id,
    New.role_name,
    New.role_code

  ) RETURNING id into v_id;
  END; 
  ELSIF TG_OP = 'DELETE' THEN 
  DELETE FROM sports.roles
  WHERE 
    (jguid = Old.jguid) ;
  END IF; 
  RETURN New; 	
END;
$BODY$;

ALTER FUNCTION sports.roles_view_trg()
    OWNER TO ergo;
