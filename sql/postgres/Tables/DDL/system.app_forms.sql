-- Table: system.app_forms

-- DROP TABLE IF EXISTS system.app_forms;

CREATE TABLE IF NOT EXISTS system.app_forms
(
    form_url character varying(256) COLLATE pg_catalog."default" NOT NULL,
    form_name character varying(256) COLLATE pg_catalog."default" NOT NULL,
    db_schema_id integer,
    form_id integer NOT NULL,
    form_key character varying(64) COLLATE pg_catalog."default",
    insert_date timestamp with time zone,
    update_date timestamp with time zone,
    model_id integer,
    spfo_jguid character varying(40) COLLATE pg_catalog."default" NOT NULL,
    spfo_deleted boolean DEFAULT false,
    CONSTRAINT app_forms_pk PRIMARY KEY (form_id),
    CONSTRAINT app_forms_uk UNIQUE (form_name),
    CONSTRAINT spfo_jguid_uk UNIQUE (spfo_jguid),
    CONSTRAINT fk_app_forms_models FOREIGN KEY (model_id)
        REFERENCES system.form_models (model_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS system.app_forms
    OWNER to postgres;

COMMENT ON COLUMN system.app_forms.form_url
    IS 'Foreign key to applications, every form is member of an application';

COMMENT ON COLUMN system.app_forms.spfo_jguid
    IS 'guid unique identifier across DBs';
-- Index: idx_app_forms_0

-- DROP INDEX IF EXISTS system.idx_app_forms_0;

CREATE INDEX IF NOT EXISTS idx_app_forms_0
    ON system.app_forms USING btree
    (form_id ASC NULLS LAST)
    TABLESPACE pg_default;

-- Trigger: form_dates_biu

-- DROP TRIGGER IF EXISTS form_dates_biu ON system.app_forms;

CREATE TRIGGER form_dates_biu
    BEFORE INSERT OR UPDATE 
    ON system.app_forms
    FOR EACH ROW
    EXECUTE PROCEDURE system.record_date_biu();

-- Trigger: form_id_bi_trg

-- DROP TRIGGER IF EXISTS form_id_bi_trg ON system.app_forms;

CREATE TRIGGER form_id_bi_trg
    BEFORE INSERT
    ON system.app_forms
    FOR EACH ROW
    EXECUTE PROCEDURE system.app_forms_biu();

-- Trigger: spfo_bi_trg

-- DROP TRIGGER IF EXISTS spfo_bi_trg ON system.app_forms;

CREATE TRIGGER spfo_bi_trg
    BEFORE INSERT OR UPDATE 
    ON system.app_forms
    FOR EACH ROW
    EXECUTE PROCEDURE system.spfo_trg();