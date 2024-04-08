ALTER TABLE IF EXISTS ergo_system.db_schemas
    ADD COLUMN IF NOT EXISTS update_date timestamp with time zone;

ALTER TABLE IF EXISTS ergo_system.db_schemas
    ADD COLUMN IF NOT EXISTS insert_date timestamp with time zone;
	
INSERT INTO ergo_system.db_schemas(
	id, name, description, personal, country_id, language_id, default_user_id, url, jguid, deleted, insert_date)
	VALUES (0, 'public', 'Public Schema', false, 1, 1, 0, 'https://api.januaservers.com', uuid_generate_v4(), false,  now());
	
CREATE SEQUENCE ergo_system.db_schemas_seq
    OWNED BY ergo_system.db_schemas.id;

ALTER SEQUENCE ergo_system.db_schemas_seq
    OWNER TO ergo;
	
	
CREATE TRIGGER db_schemas_biu
    BEFORE INSERT OR UPDATE 
    ON ergo_system.db_schemas
    FOR EACH ROW
    EXECUTE PROCEDURE ergo_system.insert_defaults_trg();
	
	
INSERT INTO ergo_system.db_schemas(
	id, name, description, personal, country_id, language_id, default_user_id, url)
	VALUES (0, 'ergo', 'Ergo Mercator', false, 1, 1, 0, 'https://api.ergomercator.com');