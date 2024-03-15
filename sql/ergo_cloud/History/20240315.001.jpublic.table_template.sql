-- Table: jpublic.table_template

-- DROP TABLE IF EXISTS jpublic.table_template;

CREATE TABLE IF NOT EXISTS jpublic.table_template
(
    id integer NOT NULL DEFAULT 0,
    db_schema_id integer,
    jguid uuid NOT NULL DEFAULT uuid_generate_v4(),
    deleted boolean DEFAULT false,
    insert_date timestamp with time zone,
    update_date timestamp with time zone,
    user_insert character varying(128) COLLATE pg_catalog."default",
    user_update character varying(128) COLLATE pg_catalog."default",
    CONSTRAINT table_template_pk PRIMARY KEY (id),
    CONSTRAINT clubs_jguid_uk UNIQUE (jguid)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS jpublic.table_template
    OWNER to ergo;

COMMENT ON TABLE jpublic.table_template
    IS 'Model table for standard db tables ';

COMMENT ON COLUMN jpublic.table_template.id
    IS 'This is the table unique ID.... ';

COMMENT ON COLUMN jpublic.table_template.jguid
    IS 'guid unique identifier across DBs';

-- Trigger: table_template_bi_trg

-- DROP TRIGGER IF EXISTS table_template_bi_trg ON jpublic.table_template;

CREATE TRIGGER table_template_bi_trg
    BEFORE INSERT OR UPDATE 
    ON jpublic.table_template
    FOR EACH ROW
    EXECUTE PROCEDURE jpublic.insert_defaults_trg();