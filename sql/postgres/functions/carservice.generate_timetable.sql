-- FUNCTION: carservice.generate_timetable()

-- DROP FUNCTION IF EXISTS carservice.generate_timetable();

CREATE OR REPLACE FUNCTION carservice.generate_timetable(
	)
    RETURNS void
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
  begin
     null;
  end; 
$BODY$;

ALTER FUNCTION carservice.generate_timetable()
    OWNER TO ergo;

COMMENT ON FUNCTION carservice.generate_timetable()
    IS 'This procedure Generates a Timetable for a specific period';
