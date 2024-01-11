-- FUNCTION: carservice.timetable_view_update_trg()

-- DROP FUNCTION IF EXISTS carservice.timetable_view_update_trg();

CREATE OR REPLACE FUNCTION carservice.timetable_view_update_trg()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
declare
  id_driver bigint; 
begin
  -- nota booked = true or booked = false ... 
  
  if coalesce(new.booked, old.booked) and new.booking_id is not null then
  
  
    /* Se ci sono prenotazioni (booking_id) nella medesima direzione  */
    update carservice.timetable SET booking_id=null, from_id=null, to_id=null, state_id = 0
	  WHERE (workingday = old.workingday and slot_id <> old.slot_id) and booking_id = new.booking_id and from_id = new.from_id;  
  
    select min(driver_anagraph_id) into id_driver from carservice.timetable where
	  workingday = old.workingday and slot_id = old.slot_id and state_id = 0;
	  
  UPDATE carservice.timetable
	SET booking_id=new.booking_id, from_id=new.from_id, to_id=new.to_id, 
	state_id = CASE WHEN  new.booked then new.state_id else 0 end
	WHERE workingday = old.workingday and slot_id = old.slot_id and driver_anagraph_id = id_driver;
	
  else
  UPDATE carservice.timetable
	SET booking_id=null, from_id=null, to_id=null, state_id = 0
	WHERE workingday = old.workingday and slot_id = old.slot_id and booking_id = new.booking_id; 
  end if ; 
  

   return new; 
end; 
$BODY$;

ALTER FUNCTION carservice.timetable_view_update_trg()
    OWNER TO ergo;
