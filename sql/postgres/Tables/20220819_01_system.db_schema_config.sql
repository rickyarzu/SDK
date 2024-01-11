-- Table: system.db_schema_config

-- DROP TABLE IF EXISTS system.db_schema_config;

CREATE TABLE IF NOT EXISTS system.db_schema_config
(
    db_schema_id integer NOT NULL,
    key character varying COLLATE pg_catalog."default" NOT NULL,
    conf json NOT NULL,
    jguid uuid,
    deleted boolean,
    CONSTRAINT db_schema_config_pkey PRIMARY KEY (db_schema_id, key)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS system.db_schema_config
    OWNER to ergo;