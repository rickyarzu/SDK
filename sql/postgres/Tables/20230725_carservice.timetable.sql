ALTER TABLE IF EXISTS carservice.timetable
    ADD COLUMN from_latitude double precision;

COMMENT ON COLUMN carservice.timetable.from_latitude
    IS 'Latitude of Starting Address';
	
ALTER TABLE IF EXISTS carservice.timetable
    ADD COLUMN from_longitude double precision;

COMMENT ON COLUMN carservice.timetable.from_longitude
    IS 'From Longitude';
	
ALTER TABLE IF EXISTS carservice.timetable
    ADD COLUMN from_full_address character varying(256);
	
	
ALTER TABLE IF EXISTS carservice.timetable
    ADD COLUMN to_latitude double precision;

COMMENT ON COLUMN carservice.timetable.from_latitude
    IS 'Latitude of Starting Address';
	
ALTER TABLE IF EXISTS carservice.timetable
    ADD COLUMN to_longitude double precision;

COMMENT ON COLUMN carservice.timetable.from_longitude
    IS 'From Longitude';
	
ALTER TABLE IF EXISTS carservice.timetable
    ADD COLUMN to_full_address character varying(256);
	
	
