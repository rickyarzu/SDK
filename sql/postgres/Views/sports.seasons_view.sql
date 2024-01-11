CREATE OR REPLACE VIEW sports.seasons_view
 AS
select * from sports.seasons where db_schema_id = system.get_schema_id();

ALTER TABLE sports.seasons
    OWNER TO ergo;
	
