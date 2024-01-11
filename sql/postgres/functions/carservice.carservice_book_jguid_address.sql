-- FUNCTION: carservice.carservice_book_jguid(date, smallint, boolean, uuid)

-- DROP FUNCTION IF EXISTS carservice.carservice_book_jguid(date, smallint, boolean, uuid);

CREATE OR REPLACE FUNCTION carservice.carservice_book_jguid_address(
	p_day date,
	p_slot_id smallint,
	p_pickup boolean,
	p_jguid uuid, 
	p_from_latitude double precision, 
	p_from_longitude double precision, 
	p_from_full_address character varying, 
	p_to_latitude double precision, 
	p_to_longitude double precision, 
	p_to_full_address character varying, 
	p_from_id integer, 
	p_to_id integer
    )
    RETURNS integer
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
DECLARE
  Result integer default -1; 
  p_booking_id bigint; 
BEGIN

	Result := -1;

   	IF EXISTS (SELECT 1 FROM carservice.booking_heads t
   		WHERE  jguid = p_jguid ) 
   	THEN
	   
		SELECT t.id INTO p_booking_id 
		FROM carservice.booking_heads t
   		WHERE  jguid = p_jguid;
	raise notice 'FOUND BOOKING ';	
		Result := carservice.carservice_book(
					p_day,
					p_slot_id,
			        p_pickup, 
					p_booking_id);
   	END IF; 
	
	IF Result > 0 THEN
		UPDATE carservice.timetable SET 
			from_latitude = p_from_latitude ,
			from_longitude = p_from_longitude ,
			from_full_address = p_from_full_address ,
			to_latitude = p_to_latitude ,
			to_longitude = p_to_longitude ,
			to_full_address = p_to_full_address 
		 WHERE 
		   driver_anagraph_id = Result AND workingday = p_day AND slot_id = p_slot_id and booking_id = p_booking_id;
	END IF; 
   
   RETURN Result; 

END;
$BODY$;

