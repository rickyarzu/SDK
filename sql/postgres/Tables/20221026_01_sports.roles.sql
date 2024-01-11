-- Table: football.ft_roles

DROP TABLE IF EXISTS sports.roles;

CREATE TABLE IF NOT EXISTS sports.roles
(
    id smallint NOT NULL,
    role_code character varying(5) COLLATE pg_catalog."default",
    role_name character varying(30) COLLATE pg_catalog."default",
    remote_id integer,
    db_schema_id integer DEFAULT system.get_schema_id(),	
    jguid uuid NOT NULL DEFAULT uuid_generate_v1(),
    deleted boolean DEFAULT false,
	insert_date timestamp with time zone DEFAULT now(), 
	update_date timestamp with time zone, 
	user_insert character varying (128), 
	user_update character varying (128), 
    CONSTRAINT roles_pk PRIMARY KEY (id),
    CONSTRAINT roles_jguid_uk UNIQUE (jguid)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS sports.roles
    OWNER to ergo;

COMMENT ON COLUMN sports.roles.jguid
    IS 'guid unique identifier across DBs';

-- Trigger: frls_bi_trg

-- DROP TRIGGER IF EXISTS frls_bi_trg ON football.ft_roles;

CREATE TRIGGER roles_biu_trg
    BEFORE INSERT OR UPDATE 
    ON sports.roles
    FOR EACH ROW
    EXECUTE PROCEDURE sports.insert_defaults_trg();