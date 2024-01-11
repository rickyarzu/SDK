-- FUNCTION: carservice.timetable_update_trg()

-- DROP FUNCTION IF EXISTS carservice.timetable_update_trg();

CREATE OR REPLACE FUNCTION carservice.timetable_update_trg()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
begin
  if new.jguid is null 
     then new.jguid = old.jguid;
  end if; 
  
  if new.state_id is null 
     then new.state_id = old.state_id;
  end if; 
  
  RETURN New; 
end; 
$BODY$;

ALTER FUNCTION carservice.timetable_update_trg()
    OWNER TO ergo;
