ALTER TABLE IF EXISTS system.db_roles
    RENAME srls_jguid TO jguid;

	
INSERT INTO system.db_roles (role_id, role_name, db_schema_id) 
VALUES (1, 'admin', 0);

INSERT INTO system.db_roles (role_id, role_name, db_schema_id )
VALUES (2, 'user', 0);

INSERT INTO system.db_roles (role_id, role_name, db_schema_id )
VALUES (3, 'driver', 0);

INSERT INTO system.db_roles (role_id, role_name, db_schema_id) 
VALUES (4, 'service', 0);