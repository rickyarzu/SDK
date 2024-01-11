-- FUNCTION: carservice.insert_message(json, text, integer, uuid, uuid, integer, integer)

-- DROP FUNCTION IF EXISTS carservice.insert_message(json, text, integer, uuid, uuid, integer, integer);

CREATE OR REPLACE FUNCTION carservice.insert_message(
	p_json json,
	p_message text,
	p_anagraph_id integer,
	p_booking_jguid uuid,
	p_timetable_jguid uuid,
	p_user_id integer,
	p_msgtype integer)
    RETURNS void
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
BEGIN

-- IN p_json json, IN p_message text, IN p_anagraph_id integer, IN p_booking_jguid uuid, 
-- IN p_timetable_jguid uuid, IN p_user_id integer, IN p_msgtype integer
if p_message IS NOT NULL THEN 
	INSERT INTO 
	  carservice.messages(
		anagraph_id,   db_user_id, msgtype,   msgtext,   json,   booking_jguid,   timetable_jguid)
		VALUES 
	   (p_anagraph_id, p_user_id,  p_msgtype, p_message, p_json, p_booking_jguid, p_timetable_jguid);
	END IF; 
END; 
$BODY$;

ALTER FUNCTION carservice.insert_message(json, text, integer, uuid, uuid, integer, integer)
    OWNER TO postgres;
