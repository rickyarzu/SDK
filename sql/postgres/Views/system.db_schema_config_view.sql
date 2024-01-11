create view system.db_schema_config_view as
SELECT *
	FROM system.db_schema_config where db_schema_id = system.get_schema_id();