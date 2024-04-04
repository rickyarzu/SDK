-- Table: system.db_schemas

DROP TABLE IF EXISTS ergo_system.db_schemas;

CREATE TABLE IF NOT EXISTS ergo_system.db_schemas
(
    id integer NOT NULL,
    name character varying(60) COLLATE pg_catalog."default" NOT NULL,
    description character varying(512) COLLATE pg_catalog."default" NOT NULL,
    personal boolean,
    country_id smallint,
    language_id smallint NOT NULL DEFAULT 1,
    default_user_id integer,
    url character varying(255) COLLATE pg_catalog."default",
    jguid uuid NOT NULL,
    deleted boolean DEFAULT false,
    CONSTRAINT db_schemas_pkey PRIMARY KEY (id),
    CONSTRAINT db_schemas_ukey UNIQUE (jguid)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS ergo_system.db_schemas
    OWNER to ergo;

COMMENT ON COLUMN ergo_system.db_schemas.personal
    IS 'This column tell us if this schema is linked to a person as a personal schema to store owner''s data, password, and profiles';

COMMENT ON COLUMN ergo_system.db_schemas.jguid
    IS 'guid unique identifier across DBs';
-- Index: db_schema_url_ndx

-- DROP INDEX IF EXISTS system.db_schema_url_ndx;

CREATE INDEX IF NOT EXISTS db_schema_url_ndx
    ON ergo_system.db_schemas USING btree
    (url COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: db_schemas_key_ndx