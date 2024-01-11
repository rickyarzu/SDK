-- FUNCTION: sports.defaults_trg()

-- DROP FUNCTION IF EXISTS sports.defaults_trg();

CREATE OR REPLACE FUNCTION sports.defaults_trg()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$

begin

  if New.jguid is null then
     New.jguid:= uuid_generate_v4();
  end if;

  if New.deleted is null then
     New.deleted := false;
  end if;

  if (New.db_schema_id is null) or (New.db_schema_id = 0) then
     New.db_schema_id:=0;
  end if;
  
  if (New.insert_date is null) then
     New.insert_date := Now();
  end if;
  
  New.user_update := Now();
  
  Return NEW;
end;
$BODY$;

ALTER FUNCTION sports.defaults_trg()
    OWNER TO ergo;
