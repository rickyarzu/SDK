-- FUNCTION: system.supr_trg()

-- DROP FUNCTION IF EXISTS system.supr_trg();

CREATE OR REPLACE FUNCTION system.supr_trg()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$


begin

  if New.supr_jguid is null then
     New.jguid = public.uuid_generate_v1mc(); 
     New.supr_jguid:= '{' || New.jguid::character varying || '}';
  end if;


  if New.supr_deleted is null then
     New.supr_deleted := false;
  end if;

  if New.db_schema_id is null then
     New.db_schema_id:=0;
  end if;
  Return NEW;
end;
$BODY$;

ALTER FUNCTION system.supr_trg()
    OWNER TO ergo;
