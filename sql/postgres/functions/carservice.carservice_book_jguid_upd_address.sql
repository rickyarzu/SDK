-- FUNCTION: carservice.carservice_book_jguid_address(date, smallint, boolean, uuid, double precision, double precision, character varying, double precision, double precision, character varying, integer, integer)

-- DROP FUNCTION IF EXISTS carservice.carservice_book_jguid_address(date, smallint, boolean, uuid, double precision, double precision, character varying, double precision, double precision, character varying, integer, integer);

CREATE OR REPLACE FUNCTION carservice.carservice_book_jguid_upd_address(
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
	p_to_id integer)
    RETURNS boolean
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
DECLARE
  Result integer default -1; 
  p_booking_id bigint; 
BEGIN

	Result := EXISTS (SELECT 1 FROM carservice.booking_heads t
   		WHERE  jguid = p_jguid );
		

   	IF Result THEN
	   
		SELECT t.id INTO p_booking_id 
		FROM carservice.booking_heads t
   		WHERE  jguid = p_jguid;
	
		UPDATE carservice.timetable SET 
			from_latitude = p_from_latitude ,
			from_longitude = p_from_longitude ,
			from_full_address = p_from_full_address ,
			to_latitude = p_to_latitude ,
			to_longitude = p_to_longitude ,
			to_full_address = p_to_full_address,
			from_id = p_from_id, 
			to_id = p_to_id
		 WHERE 
		   workingday = p_day AND slot_id = p_slot_id and booking_id = p_booking_id;
	END IF; 
   
   RETURN Result; 

END;
$BODY$;

ALTER FUNCTION carservice.carservice_book_jguid_upd_address(date, smallint, boolean, uuid, double precision, double precision, character varying, double precision, double precision, character varying, integer, integer)
    OWNER TO postgres;
