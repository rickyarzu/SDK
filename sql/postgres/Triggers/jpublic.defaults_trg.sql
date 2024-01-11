-- FUNCTION: sports.defaults_trg()

-- DROP FUNCTION IF EXISTS sports.defaults_trg();

CREATE OR REPLACE FUNCTION jpublic.defaults_trg()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$

begin

  if New.jguid is null then
     New.jguid:= uuid_generate_v1();
  end if;

  if New.deleted is null then
     New.deleted := false;
  end if;

  if New.db_schema_id is null then
     New.db_schema_id:=0;
  end if;
  
  Return NEW;
end;
$BODY$;

ALTER FUNCTION sports.defaults_trg()
    OWNER TO ergo;
