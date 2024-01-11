-- FUNCTION: anagraph.angr_trg()

-- DROP FUNCTION anagraph.angr_trg();

CREATE OR REPLACE FUNCTION anagraph.angr_trg()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$


begin

  if New.angr_jguid is null then
     New.angr_jguid:= '{' || public.uuid_generate_v1mc() || '}';
  end if;

  if New.angr_deleted is null then
     New.angr_deleted := false;
  end if;

  if New.db_schema_id is null then
     New.db_schema_id:=0;
  end if;
  
  if New.vessel_id = 0 then
     New.vessel_id := NULL;
  end if;
  
  
  Return NEW;
end;
$BODY$;

ALTER FUNCTION anagraph.angr_trg()
    OWNER TO ergo;
