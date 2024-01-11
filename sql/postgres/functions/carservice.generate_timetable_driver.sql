-- FUNCTION: carservice.generate_timetable_driver(integer, integer, date)

-- DROP FUNCTION IF EXISTS carservice.generate_timetable_driver(integer, integer, date);

CREATE OR REPLACE FUNCTION carservice.generate_timetable_driver(
	p_days integer,
	p_driver_id integer,
	p_hiring_date date)
    RETURNS void
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
  declare
    v_day date; 
	r record; 
  begin
    IF EXISTS (SELECT 1 FROM carservice.timetable WHERE driver_anagraph_id = p_driver_id) THEN
    	v_day := (select max(workingday) from  carservice.timetable);
	ELSE
	  v_day := p_hiring_date; 
	END IF; 
	  
	RAISE NOTICE 'First Day: %', v_day;
	
	for r in 
	(
		with days as
		(
    	select dd, extract(DOW from dd) dw
    	from generate_series(now()::Date, now()::Date + p_days, '1 day'::interval) dd
		)
		select * from days where  dw not in (6,0)
	)
	LOOP 
	  INSERT INTO carservice.timetable(workingday, slot_id, slot_id)
	  	SELECT dd, slot_id, p_driver_id
	    FROM carservice.timetable_slots;	
	END LOOP; 
  end; 
$BODY$;

ALTER FUNCTION carservice.generate_timetable_driver(integer, integer, date)
    OWNER TO ergo;
