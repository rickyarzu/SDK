-- FUNCTION: carservice.carservice_book_jguid(date, smallint, uuid)

-- DROP FUNCTION IF EXISTS carservice.carservice_book_jguid(date, smallint, uuid);

CREATE OR REPLACE FUNCTION carservice.carservice_book_jguid(
	p_day date,
	p_slot_id smallint,
	p_pickup boolean, 
	p_jguid uuid)
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
   
   RETURN Result; 

END;
$BODY$;

ALTER FUNCTION carservice.carservice_book_jguid(date, smallint, boolean, uuid)
    OWNER TO ergo;
