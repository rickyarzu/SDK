-- Table: system.app_member_forms

-- DROP TABLE IF EXISTS system.app_member_forms;

CREATE TABLE IF NOT EXISTS system.app_member_forms
(
    application_id smallint NOT NULL,
    form_id integer NOT NULL,
    db_schema_id integer,
    CONSTRAINT app_member_forms_pkey PRIMARY KEY (application_id, form_id),
    CONSTRAINT app_member_forms_fk FOREIGN KEY (form_id)
        REFERENCES system.app_forms (form_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT app_members_applications_fk FOREIGN KEY (application_id)
        REFERENCES system.applications (application_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS system.app_member_forms
    OWNER to ergo;

-- Trigger: spmf_bi_trg

-- DROP TRIGGER IF EXISTS spmf_bi_trg ON system.app_member_forms;

CREATE TRIGGER spmf_bi_trg
    BEFORE INSERT OR UPDATE 
    ON system.app_member_forms
    FOR EACH ROW
    EXECUTE PROCEDURE system.spmf_trg();