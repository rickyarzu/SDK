DO
$$
DECLARE
    ct RECORD; 
BEGIN

FOR ct IN  SELECT workingday, slot_id FROM carservice.timetable LOOP
    update carservice.timetable set
	  jguid = uuid_generate_v4 () where
	  workingday = ct.workingday and slot_id = ct.slot_id; 
END LOOP;

END;
$$