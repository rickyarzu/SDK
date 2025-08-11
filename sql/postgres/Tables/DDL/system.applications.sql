-- Table: system.applications

-- DROP TABLE IF EXISTS system.applications;

CREATE TABLE IF NOT EXISTS system.applications
(
    application_id smallint NOT NULL,
    application_des character varying(1024) COLLATE pg_catalog."default" NOT NULL,
    application_name character varying(128) COLLATE pg_catalog."default" NOT NULL,
    creation_date timestamp with time zone,
    description text COLLATE pg_catalog."default",
    application_key character varying(64) COLLATE pg_catalog."default",
    code character(2) COLLATE pg_catalog."default",
    db_schema_id integer,
    deleted boolean DEFAULT false,
    jguid uuid,
    CONSTRAINT ap_applications_pkey PRIMARY KEY (application_id),
    CONSTRAINT apapp_application_name_uk UNIQUE (application_name)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS system.applications
    OWNER to postgres;

COMMENT ON TABLE system.applications
    IS 'This is the Database of the Models of Applications, it includes the application Name and the app_application_params ';

-- Trigger: sppl_bi_trg

-- DROP TRIGGER IF EXISTS sppl_bi_trg ON system.applications;

CREATE TRIGGER sppl_bi_trg
    BEFORE INSERT OR UPDATE 
    ON system.applications
    FOR EACH ROW
    EXECUTE PROCEDURE system.sppl_trg();