-- FUNCTION: jpublic.defaults_trg()

-- DROP FUNCTION IF EXISTS jpublic.defaults_trg();

CREATE OR REPLACE FUNCTION ergo_system.insert_defaults_trg()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
DECLARE
 v_count integer;
 v_sequence character varying; 
BEGIN
	--  SELECT COUNT(*) INTO v_count
	--	FROM information_schema.sequences 
	--	WHERE sequence_schema=TG_TABLE_SCHEMA AND sequence_name=TG_TABLE_NAME || v_sequence;

	 IF TG_OP = 'INSERT' THEN
		v_sequence := TG_TABLE_NAME || '_' || 'seq'; 
		IF New.id IS NULL OR  New.id = 0  THEN
			New.id := nextval(TG_TABLE_SCHEMA || '.' || v_sequence); 	 
		 END IF;
		  if New.jguid is null then
			 New.jguid:= uuid_generate_v4();
		  end if;
		  if New.deleted is null then
			 New.deleted := false;
		  end if;
		  New.insert_date := now(); 
	  ELSIF TG_OP = 'UPDATE' THEN
		 IF New.id IS NULL OR  New.id = 0  THEN
			New.id := Old.id; 
		 END IF;
		  IF New.jguid IS null THEN
			 New.jguid:= Old.jguid;
		  END IF;
		  IF New.deleted is null then
			 New.deleted := Old.deleted;
		  end if;
	     New.update_date := now();
		 IF New.insert_date is null THEN New.insert_date := Old.insert_date; END IF;
	  END IF; 
  
  RETURN NEW;
END;
$BODY$;

ALTER FUNCTION ergo_system.insert_defaults_trg()
    OWNER TO ergo;
