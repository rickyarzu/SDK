CREATE FUNCTION carservice.change_booking_date(IN p_jguid uuid, IN p_date date, IN p_slot_id smallint)
    RETURNS boolean
    LANGUAGE 'plpgsql'
    
AS $BODY$
begin

	return True;
end; 
$BODY$;

ALTER FUNCTION carservice.change_booking_date(uuid, date, smallint)
    OWNER TO ergo;