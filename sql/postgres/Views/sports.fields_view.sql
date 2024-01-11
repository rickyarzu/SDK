CREATE OR REPLACE VIEW sports.fields_view
 AS
select * from sports.fields where db_schema_id = current_setting('system.db_schema_id')::integer;

ALTER TABLE sports.fields
    OWNER TO ergo;
	
	