-- Table: system.app_forms_objects

-- DROP TABLE IF EXISTS system.app_forms_objects;

CREATE TABLE IF NOT EXISTS system.app_forms_objects
(
    form_id integer,
    object_id bigint NOT NULL,
    object_name character varying(128) COLLATE pg_catalog."default",
    owner_id bigint,
    db_schema_id integer,
    sppo_jguid character varying(40) COLLATE pg_catalog."default" NOT NULL,
    sppo_deleted boolean DEFAULT false,
    CONSTRAINT app_objects_pk PRIMARY KEY (object_id),
    CONSTRAINT sppo_jguid_uk UNIQUE (sppo_jguid),
    CONSTRAINT app_form_objects_forms_fk FOREIGN KEY (form_id)
        REFERENCES system.app_forms (form_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT app_objects_owners_fk FOREIGN KEY (owner_id)
        REFERENCES system.app_forms_objects (object_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS system.app_forms_objects
    OWNER to ergo;

COMMENT ON COLUMN system.app_forms_objects.sppo_jguid
    IS 'guid unique identifier across DBs';
-- Index: fki_app_form_objects_forms_fk

-- DROP INDEX IF EXISTS system.fki_app_form_objects_forms_fk;

CREATE INDEX IF NOT EXISTS fki_app_form_objects_forms_fk
    ON system.app_forms_objects USING btree
    (form_id ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: fki_app_objects_owners_fk

-- DROP INDEX IF EXISTS system.fki_app_objects_owners_fk;

CREATE INDEX IF NOT EXISTS fki_app_objects_owners_fk
    ON system.app_forms_objects USING btree
    (owner_id ASC NULLS LAST)
    TABLESPACE pg_default;

-- Trigger: sppo_bi_trg

-- DROP TRIGGER IF EXISTS sppo_bi_trg ON system.app_forms_objects;

CREATE TRIGGER sppo_bi_trg
    BEFORE INSERT OR UPDATE 
    ON system.app_forms_objects
    FOR EACH ROW
    EXECUTE PROCEDURE system.sppo_trg();