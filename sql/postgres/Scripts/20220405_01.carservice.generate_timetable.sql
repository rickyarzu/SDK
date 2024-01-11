-- FUNCTION: carservice.generate_timetable()

-- DROP FUNCTION IF EXISTS carservice.generate_timetable();

CREATE OR REPLACE FUNCTION carservice.generate_timetable( p_days in integer
	)
    RETURNS void
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
  declare
    v_day date; 
	i integer; 
  begin
    v_day := (select max(workingday) from  carservice.timetable); 
	raise notice 'First Day: %', v_day;
	
	for i in 1..p_days loop
	  INSERT INTO carservice.timetable(workingday, slot_id)
	  	SELECT v_day + i, slot_id
	    FROM carservice.timetable_slots;	
	end loop; 
  end; 
$BODY$;

ALTER FUNCTION carservice.generate_timetable(integer)
    OWNER TO ergo;

COMMENT ON FUNCTION carservice.generate_timetable(integer)
    IS 'This procedure Generates a Timetable for a specific period';
