ALTER TABLE IF EXISTS system.db_schema_config
    ADD CONSTRAINT db_schema_config_schema_fk FOREIGN KEY (db_schema_id)
    REFERENCES system.db_schemas (db_schema_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;
CREATE INDEX IF NOT EXISTS fki_db_schema_config_schema_fk
    ON system.db_schema_config(db_schema_id);