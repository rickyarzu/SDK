-- FUNCTION: system.suse_trg()

-- DROP FUNCTION IF EXISTS system.suse_trg();

CREATE OR REPLACE FUNCTION system.suse_trg()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$


begin

  if New.suse_jguid is null then
     New.jguid = public.uuid_generate_v1mc(); 
     New.suse_jguid:= '{' || New.jguid::character varying || '}';
  end if;

  if New.suse_deleted is null then
     New.suse_deleted := false;
  end if;

  if New.db_schema_id is null then
     New.db_schema_id:=0;
  end if;
  Return NEW;
end;
$BODY$;

ALTER FUNCTION system.suse_trg()
    OWNER TO ergo;
