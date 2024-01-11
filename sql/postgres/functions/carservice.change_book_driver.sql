-- FUNCTION: carservice.carservice_book(date, smallint, bigint)

-- DROP FUNCTION IF EXISTS carservice.carservice_book(date, smallint, bigint);

CREATE OR REPLACE FUNCTION carservice.change_book_driver(
	p_day date,
	p_slot_id smallint,
	p_booking_id bigint,
    p_driver_id integer)
    RETURNS integer
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
DECLARE
  Result integer default -1; 
  v_Free boolean; 
BEGIN
   UPDATE carservice.timetable_places t SET booking_id = null where 
      workingday = p_day AND slot_id = p_slot_id and driver_anagraph_id = p_driver_id; 
	  
   IF EXISTS (SELECT 1 FROM carservice.timetable_places t
   		WHERE  workingday = p_day AND slot_id = p_slot_id and driver_anagraph_id != p_driver_id) 
   THEN
		--SELECT * FROM carservice.timetable_places t
	   	--	WHERE  workingday = p_day AND slot_id = p_slot_id FOR UPDATE NOWAIT;  
		
		PERFORM system.setlog('found carservice.timetable_places'); 
	 
	   	SELECT t.free INTO v_Free FROM carservice.timetable_places t
	   		WHERE  workingday = p_day AND slot_id = p_slot_id; 
			
		PERFORM system.setlog('is free carservice.timetable_places: ' || v_Free::character varying); 
			
	   	IF v_Free THEN
	     select min(driver_anagraph_id) INTO Result FROM
		 	carservice.timetable 
			 WHERE workingday = p_day AND slot_id = p_slot_id 
			 	AND booking_id IS NULL;  
				
		  UPDATE carservice.timetable SET booking_id = p_booking_id
		    WHERE  workingday = p_day AND slot_id = p_slot_id 
			   AND driver_anagraph_id = Result; 
	   	END IF; 
   END IF; 
   
   RETURN Result; 

END;
$BODY$;

ALTER FUNCTION carservice.change_book_driver(date, smallint, bigint, integer)
    OWNER TO ergo;

COMMENT ON FUNCTION carservice.change_book_driver(date, smallint, bigint, integer)
    IS 'Generate a Carservice Booking and Returns a driver id or -1 if booking is impossibile';
