-- Table: system.app_forms_objects_properties

-- DROP TABLE IF EXISTS system.app_forms_objects_properties;

CREATE TABLE IF NOT EXISTS system.app_forms_objects_properties
(
    object_id bigint,
    property_id bigint NOT NULL,
    property_name character varying(64) COLLATE pg_catalog."default",
    textvalue text COLLATE pg_catalog."default",
    intvalue integer,
    datevalue date,
    translate boolean,
    stringvalue character varying(256) COLLATE pg_catalog."default",
    db_schema_id integer,
    spop_jguid character varying(40) COLLATE pg_catalog."default" NOT NULL,
    spop_deleted boolean DEFAULT false,
    CONSTRAINT app_formproperties_pk PRIMARY KEY (property_id),
    CONSTRAINT spop_jguid_uk UNIQUE (spop_jguid),
    CONSTRAINT app_formobjectsproperties_objects_fk FOREIGN KEY (object_id)
        REFERENCES system.app_forms_objects (object_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS system.app_forms_objects_properties
    OWNER to ergo;

COMMENT ON COLUMN system.app_forms_objects_properties.spop_jguid
    IS 'guid unique identifier across DBs';
-- Index: fki_app_formobjectsproperties_objects_fk

-- DROP INDEX IF EXISTS system.fki_app_formobjectsproperties_objects_fk;

CREATE INDEX IF NOT EXISTS fki_app_formobjectsproperties_objects_fk
    ON system.app_forms_objects_properties USING btree
    (object_id ASC NULLS LAST)
    TABLESPACE pg_default;

-- Trigger: spop_bi_trg

-- DROP TRIGGER IF EXISTS spop_bi_trg ON system.app_forms_objects_properties;

CREATE TRIGGER spop_bi_trg
    BEFORE INSERT OR UPDATE 
    ON system.app_forms_objects_properties
    FOR EACH ROW
    EXECUTE PROCEDURE system.spop_trg();