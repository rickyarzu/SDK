-- Table: football.ft_fields

DROP TABLE IF EXISTS sports.fields;
DROP SEQUENCE IF EXISTS sports.fields_seq;
CREATE SEQUENCE sports.fields_seq;

ALTER SEQUENCE sports.fields_seq
    OWNER TO ergo;

CREATE TABLE IF NOT EXISTS sports.fields
(
    id integer NOT NULL,
    db_schema_id integer,
    field_name character varying(256) COLLATE pg_catalog."default",
    address character varying(256) COLLATE pg_catalog."default",
    country_id smallint,
    region_id integer,
    district_id integer,
    town_id integer,
    remote_id integer,
    town_name character varying(128) COLLATE pg_catalog."default",
    postal_code character varying(20) COLLATE pg_catalog."default",
    telephone character varying(20) COLLATE pg_catalog."default",
    fax character varying(20) COLLATE pg_catalog."default",
    notes character varying(1024) COLLATE pg_catalog."default",
    img_url character varying(1024) COLLATE pg_catalog."default",
    jguid uuid NOT NULL DEFAULT uuid_generate_v1(),
    deleted boolean DEFAULT false,
	insert_date timestamp with time zone, 
	update_date timestamp with time zone, 
	user_insert character varying (128), 
	user_update character varying (128), 
    CONSTRAINT fields_jguid_uk UNIQUE (jguid),
    CONSTRAINT fields_pkey PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS sports.fields
    OWNER to ergo;

COMMENT ON COLUMN sports.fields.jguid
    IS 'guid unique identifier across DBs';

-- Trigger: ffld_bi_trg

-- DROP TRIGGER IF EXISTS ffld_bi_trg ON football.ft_fields;

CREATE TRIGGER fields_bi_trg
    BEFORE INSERT OR UPDATE 
    ON sports.fields
    FOR EACH ROW
    EXECUTE PROCEDURE sports.insert_defaults_trg();