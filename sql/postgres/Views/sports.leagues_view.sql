CREATE OR REPLACE VIEW sports.leagues_view
 AS
select * from sports.leagues where db_schema_id = current_setting('system.db_schema_id')::integer;

ALTER TABLE sports.leagues
    OWNER TO ergo;
	
	
