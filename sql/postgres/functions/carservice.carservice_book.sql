-- FUNCTION: carservice.carservice_book(date, smallint, boolean, bigint)

-- DROP FUNCTION IF EXISTS carservice.carservice_book(date, smallint, boolean, bigint);

CREATE OR REPLACE FUNCTION carservice.carservice_book(
	p_day date,
	p_slot_id smallint,
	p_pickup boolean,
	p_booking_id bigint)
    RETURNS integer
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
DECLARE
  Result integer default -1; 
  r_head record; 
  v_Free boolean; 
BEGIN
   IF NOT EXISTS (SELECT 1 FROM carservice.booking_heads t where id = p_booking_id  )
		THEN RAISE EXCEPTION 'Booking id % not found', p_booking_id;
	END IF; 
		
   IF EXISTS (SELECT 1 FROM carservice.timetable_places t
   		WHERE  workingday = p_day AND slot_id = p_slot_id ) 
   THEN
		SELECT * into r_head from carservice.booking_heads t where id = p_booking_id;  
		
		
		PERFORM system.setlog('found carservice.timetable_places'); 
	 
	   	SELECT t.free INTO v_Free FROM carservice.timetable_places t
	   		WHERE  workingday = p_day AND slot_id = p_slot_id; 
			
		PERFORM system.setlog('is free carservice.timetable_places: ' || v_Free::character varying); 
			
	   	IF v_Free THEN
	     select min(driver_anagraph_id) INTO Result FROM
		 	carservice.timetable 
			 WHERE workingday = p_day AND slot_id = p_slot_id 
			 	AND booking_id IS NULL;  
			IF p_pickup THEN
		  		UPDATE carservice.timetable SET booking_id = p_booking_id,
				    from_id = r_head.customer_id, to_id = r_head.branch_id 
		    		WHERE  workingday = p_day AND slot_id = p_slot_id 
			   		AND driver_anagraph_id = Result; 
				UPDATE carservice.booking_heads set 
				   pickup_day = p_day , pickup_slot_id = p_slot_id 
				WHERE 
				  id = p_booking_id; 
			ELSE
		  		UPDATE carservice.timetable SET booking_id = p_booking_id,
				    to_id = r_head.customer_id, from_id = r_head.branch_id 
		    		WHERE  workingday = p_day AND slot_id = p_slot_id 
			   		AND driver_anagraph_id = Result; 
					
				UPDATE carservice.booking_heads set 
				   return_day = p_day , return_slot_id = p_slot_id 
				WHERE 
				  id = p_booking_id;
				  
			END IF; 
		   
	   	END IF; 
   END IF; 
   
   RETURN Result; 

END;
$BODY$;

ALTER FUNCTION carservice.carservice_book(date, smallint, boolean, bigint)
    OWNER TO ergo;
