-- FUNCTION: anagraph.group_new_id_trg()

--DROP FUNCTION IF EXISTS anagraph.group_new_id_trg();

CREATE OR REPLACE FUNCTION anagraph.group_new_id_trg()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
begin
     if New.an_group_id is null then
          New.an_group_id:=nextval('anagraph.group_seq');
      end if; 
	  New.db_schema_id = current_setting('system.db_schema_id')::integer;
      Return NEW;
end;
$BODY$;

ALTER FUNCTION anagraph.group_new_id_trg()
    OWNER TO ergo;
