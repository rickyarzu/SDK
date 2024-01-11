-- FUNCTION: carservice.timetable_insert_trg()

-- DROP FUNCTION IF EXISTS carservice.timetable_insert_trg();

CREATE OR REPLACE FUNCTION carservice.timetable_insert_trg()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
begin
  if new.jguid is null 
     then new.jguid = uuid_generate_v4();
  end if; 
  
  if new.state_id is null 
     then new.state_id = 0;
  end if; 
  
  RETURN New; 
end; 
$BODY$;

ALTER FUNCTION carservice.timetable_insert_trg()
    OWNER TO ergo;
