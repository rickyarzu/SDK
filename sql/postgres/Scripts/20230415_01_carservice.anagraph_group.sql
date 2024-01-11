SET SESSION "system.db_schema_id" = 36; 

INSERT INTO anagraph.groups(
	db_schema_id, an_group_id, group_des,  accounting, description,  angr_deleted, icon_id)
	VALUES (
	36, --db_schema_id, 
	31, --an_group_id, 
	'Branches', --group_des,  
	False, --accounting, 
	'Filiali', --description,  
	False, --angr_deleted, 
	71 --icon_id	
	); 