-- FUNCTION: jpublic.insert_defaults_trg()

-- DROP FUNCTION IF EXISTS jpublic.insert_defaults_trg();

CREATE OR REPLACE FUNCTION jpublic.insert_defaults_trg()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
DECLARE
 v_count integer;
 v_sequence character varying; 
begin
	v_sequence := TG_TABLE_NAME || '_' || 'seq'; 
	
	--  SELECT COUNT(*) INTO v_count
	--	FROM information_schema.sequences 
	--	WHERE sequence_schema=TG_TABLE_SCHEMA AND sequence_name=TG_TABLE_NAME || v_sequence;

	 IF TG_OP = 'INSERT' THEN
		 IF New.id IS NULL OR  New.id = 0  THEN
			New.id := nextval(TG_TABLE_SCHEMA || '.' || v_sequence); 	 
		 END IF;
		  if New.jguid is null then
			 New.jguid:= uuid_generate_v4();
		  end if;
		  if New.deleted is null then
			 New.deleted := false;
		  end if;
		  if New.db_schema_id is null OR  New.db_schema_id = 0  then
			 New.db_schema_id := system.GET_schema_id();
		  end if;
		  New.insert_date := now(); 
	  ELSIF TG_OP = 'UPDATE' THEN
		 IF New.id IS NULL OR  New.id = 0  THEN
			New.id := Old.id; 
		 END IF;
		  if New.jguid is null then
			 New.jguid:= Old.jguid;
		  end if;
		  if New.deleted is null then
			 New.deleted := Old.jguid;
		  end if;
	     New.update_date := now();
	  END IF; 

	  Return NEW;
end;
$BODY$;

ALTER FUNCTION jpublic.insert_defaults_trg()
    OWNER TO ergo;
