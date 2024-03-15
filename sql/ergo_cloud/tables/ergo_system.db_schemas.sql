-- Table: system.db_schemas

-- DROP TABLE IF EXISTS system.db_schemas;

CREATE TABLE IF NOT EXISTS system.db_schemas
(
    schema_name character varying(60) COLLATE pg_catalog."default" NOT NULL,
    description character varying(512) COLLATE pg_catalog."default" NOT NULL,
    personal boolean,   
    country_id smallint,
    language_id smallint NOT NULL DEFAULT 1,
    default_user_id integer,
    url character varying(255) COLLATE pg_catalog."default",
    jguid uuid not null, 
    deleted boolean not null DEFAULT false,
    CONSTRAINT db_schemas_pkey PRIMARY KEY (db_schema_id),
    CONSTRAINT jguid_uk UNIQUE (jguid)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS system.db_schemas
    OWNER to postgres;

COMMENT ON COLUMN system.db_schemas.personal
    IS 'This column tell us if this schema is linked to a person as a personal schema to store owner''s data, password, and profiles';

COMMENT ON COLUMN system.db_schemas.jguid
    IS 'guid unique identifier across DBs';
-- Index: db_schema_url_ndx

-- DROP INDEX IF EXISTS system.db_schema_url_ndx;

CREATE INDEX IF NOT EXISTS db_schema_url_ndx
    ON system.db_schemas USING btree
    (url COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: db_schemas_key_ndx
-- Trigger: ssch_bi_trg