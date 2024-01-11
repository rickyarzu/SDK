ALTER TABLE IF EXISTS carservice.drivers
    ADD COLUMN IF NOT EXISTS db_schema_id integer NOT NULL;