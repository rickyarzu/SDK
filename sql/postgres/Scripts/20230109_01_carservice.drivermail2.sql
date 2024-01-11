insert into 
	 system.db_schema_config (db_schema_id, key, conf)
	select 
	  36, 'carservice.drivermail2', conf from system.db_schema_config where db_schema_id = 36 and key = 'carservice.drivermail1'
	  select * from system.db_schema_config; 