-- Column: documents.rows.haz_class

-- ALTER TABLE IF EXISTS documents.rows DROP COLUMN IF EXISTS haz_class;

ALTER TABLE IF EXISTS documents.rows
    ADD COLUMN IF NOT EXISTS haz_class character varying(20) COLLATE pg_catalog."default";