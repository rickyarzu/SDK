-- Table: workflow.attachments

-- DROP TABLE IF EXISTS workflow.attachments;

CREATE TABLE IF NOT EXISTS workflow.attachments
(
    work_id bigint NOT NULL,
    blob_id bigint NOT NULL,
    blob_jguid uuid,
    location "char" NOT NULL DEFAULT 'D'::"char",
    filename character varying(256) COLLATE pg_catalog."default",
    description text COLLATE pg_catalog."default",
    context text COLLATE pg_catalog."default",
    extension character varying(20) COLLATE pg_catalog."default",
    db_schema_id integer NOT NULL DEFAULT 0,
    flg_internet boolean NOT NULL DEFAULT false,
    jguid uuid,
    CONSTRAINT attachments_pk PRIMARY KEY (work_id, blob_id),
    CONSTRAINT attachments_jpk UNIQUE (jguid),
    CONSTRAINT attachments_uk UNIQUE (blob_jguid),
    CONSTRAINT fk_attachments_works FOREIGN KEY (work_id)
        REFERENCES workflow.workflows (id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS workflow.attachments
    OWNER to ergo;

COMMENT ON COLUMN workflow.attachments.filename
    IS 'a descriptive file name to identify the attachment';

COMMENT ON COLUMN workflow.attachments.description
    IS 'A long Text Description for the File';

COMMENT ON COLUMN workflow.attachments.context
    IS 'content text for contextual search on engine (from OCR or PDF-Word-Excel scan Read). ';

COMMENT ON COLUMN workflow.attachments.extension
    IS 'File Extension (to correctly display the icon and manage MIME informations)';

COMMENT ON COLUMN workflow.attachments.flg_internet
    IS 'if true the record should be displayed on website for customers';