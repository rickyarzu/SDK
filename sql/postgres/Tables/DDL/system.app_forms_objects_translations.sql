-- Table: system.app_forms_objects_translations

-- DROP TABLE IF EXISTS system.app_forms_objects_translations;

CREATE TABLE IF NOT EXISTS system.app_forms_objects_translations
(
    property_id bigint NOT NULL,
    language_id smallint NOT NULL,
    stringvalue character varying(2048) COLLATE pg_catalog."default",
    textvalue text COLLATE pg_catalog."default",
    db_schema_id integer,
    spot_jguid character varying(40) COLLATE pg_catalog."default" NOT NULL,
    spot_deleted boolean DEFAULT false,
    CONSTRAINT app_form_propertiestrans_pk PRIMARY KEY (property_id, language_id),
    CONSTRAINT spot_jguid_uk UNIQUE (spot_jguid),
    CONSTRAINT app_forms_translation_properties_fk FOREIGN KEY (property_id)
        REFERENCES system.app_forms_objects_properties (property_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS system.app_forms_objects_translations
    OWNER to ergo;

COMMENT ON COLUMN system.app_forms_objects_translations.spot_jguid
    IS 'guid unique identifier across DBs';

-- Trigger: spot_bi_trg

-- DROP TRIGGER IF EXISTS spot_bi_trg ON system.app_forms_objects_translations;

CREATE TRIGGER spot_bi_trg
    BEFORE INSERT OR UPDATE 
    ON system.app_forms_objects_translations
    FOR EACH ROW
    EXECUTE PROCEDURE system.spot_trg();