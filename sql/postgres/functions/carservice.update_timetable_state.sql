CREATE OR REPLACE FUNCTION carservice.update_timetable_state(p_state_id bigint, p_guid uuid)
    RETURNS boolean
    LANGUAGE 'plpgsql'
    
AS $BODY$
declare 
  Result Boolean; 
begin

	Result := Exists (Select 1 from carservice.timetable where
					 jguid = p_guid);

	if Result THEN
		UPDATE carservice.timetable
		SET
		  state_id = p_state_id
		WHERE
		  jguid = p_guid;
	END IF; 

	RETURN Result;
end; 
$BODY$;

ALTER FUNCTION carservice.update_timetable_state(bigint, uuid)
    OWNER TO ergo;