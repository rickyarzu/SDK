CREATE OR REPLACE FUNCTION carservice.change_booking_date(IN p_jguid uuid, IN p_date date, IN p_slot_id smallint)
    RETURNS boolean
    LANGUAGE 'plpgsql'
    
AS $BODY$
DECLARE
  r RECORD;
  v_result BOOLEAN; 
BEGIN
	v_result := EXISTS (SELECT 1 FROM carservice.timetable t WHERE jguid = p_jguid) ;
	if v_result THEN
		SELECT INTO R t.* FROM carservice.timetable t WHERE jguid = p_jguid;
	
	
	END IF; 
		
	RETURN v_result;
END; 
$BODY$;

ALTER FUNCTION carservice.change_booking_date(uuid, date, smallint)
    OWNER TO ergo;