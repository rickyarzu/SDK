CREATE OR REPLACE VIEW sports.clubs_view AS 
	SELECT * FROM sports.clubs 
		 WHERE clubs.db_schema_id = current_setting('system.db_schema_id')::integer; 