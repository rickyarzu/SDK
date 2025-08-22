-- Table: system.app_forms_translations

-- DROP TABLE IF EXISTS system.app_forms_translations;

CREATE TABLE IF NOT EXISTS system.app_forms_translations
(
    form_title character varying(256) COLLATE pg_catalog."default" NOT NULL,
    main_iso_language character varying(3) COLLATE pg_catalog."default" NOT NULL,
    trans_iso_language character varying(256) COLLATE pg_catalog."default" NOT NULL,
    db_schema_id integer,
    laguage_id smallint NOT NULL,
    form_id integer NOT NULL,
    sppt_jguid character varying(40) COLLATE pg_catalog."default" NOT NULL,
    sppt_deleted boolean DEFAULT false,
    CONSTRAINT app_forms_translations_pk PRIMARY KEY (form_id, laguage_id),
    CONSTRAINT sppt_jguid_uk UNIQUE (sppt_jguid),
    CONSTRAINT app_form_trans_forms_fk FOREIGN KEY (form_id)
        REFERENCES system.app_forms (form_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT app_from_trans_languages_fk FOREIGN KEY (laguage_id)
        REFERENCES jpublic.languages (language_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS system.app_forms_translations
    OWNER to postgres;

COMMENT ON COLUMN system.app_forms_translations.sppt_jguid
    IS 'guid unique identifier across DBs';
-- Index: fki_app_form_trans_forms_fk

-- DROP INDEX IF EXISTS system.fki_app_form_trans_forms_fk;

CREATE INDEX IF NOT EXISTS fki_app_form_trans_forms_fk
    ON system.app_forms_translations USING btree
    (form_id ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: fki_app_from_trans_languages_fk

-- DROP INDEX IF EXISTS system.fki_app_from_trans_languages_fk;

CREATE INDEX IF NOT EXISTS fki_app_from_trans_languages_fk
    ON system.app_forms_translations USING btree
    (laguage_id ASC NULLS LAST)
    TABLESPACE pg_default;

-- Trigger: sppt_bi_trg

-- DROP TRIGGER IF EXISTS sppt_bi_trg ON system.app_forms_translations;

CREATE TRIGGER sppt_bi_trg
    BEFORE INSERT OR UPDATE 
    ON system.app_forms_translations
    FOR EACH ROW
    EXECUTE PROCEDURE system.sppt_trg();