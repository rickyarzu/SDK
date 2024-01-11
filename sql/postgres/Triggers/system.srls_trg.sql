CREATE OR REPLACE FUNCTION system.srls_trg()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    VOLATILE
    COST 100
AS $BODY$

begin

  if New.jguid is null then
     New.jguid:= public.uuid_generate_v1mc();
  end if;

  if New.srls_deleted is null then
     New.srls_deleted := false;
  end if;

  if New.db_schema_id is null then
     New.db_schema_id:=0;
  end if;
  Return NEW;
end;
$BODY$;