-- View: documents.attachments_view
ALTER TABLE IF EXISTS documents.attachments
    ADD COLUMN IF NOT EXISTS deleted boolean;
	
-- Column: documents.attachments.location

-- ALTER TABLE IF EXISTS documents.attachments DROP COLUMN IF EXISTS location;

ALTER TABLE IF EXISTS documents.attachments
    ADD COLUMN IF NOT EXISTS location "char" NOT NULL DEFAULT 'D'::"char";
	
-- Column: documents.attachments.filename

-- ALTER TABLE IF EXISTS documents.attachments DROP COLUMN IF EXISTS filename;

ALTER TABLE IF EXISTS documents.attachments
    ADD COLUMN IF NOT EXISTS filename character varying(256) COLLATE pg_catalog."default";

COMMENT ON COLUMN documents.attachments.filename
    IS 'a descriptive file name to identify the attachment';
	
-- Column: documents.attachments.description

-- ALTER TABLE IF EXISTS documents.attachments DROP COLUMN IF EXISTS description;

ALTER TABLE IF EXISTS documents.attachments
    ADD COLUMN IF NOT EXISTS description text COLLATE pg_catalog."default";

COMMENT ON COLUMN documents.attachments.description
    IS 'A long Text Description for the File';
	
-- Column: documents.attachments.context

-- ALTER TABLE IF EXISTS documents.attachments DROP COLUMN IF EXISTS context;

ALTER TABLE IF EXISTS documents.attachments
    ADD COLUMN IF NOT EXISTS context text COLLATE pg_catalog."default";

COMMENT ON COLUMN documents.attachments.context
    IS 'content text for contextual search on engine (from OCR or PDF-Word-Excel scan Read). ';
	
-- Column: documents.attachments.extension

-- ALTER TABLE IF EXISTS documents.attachments DROP COLUMN IF EXISTS extension;

ALTER TABLE IF EXISTS documents.attachments
    ADD COLUMN IF NOT EXISTS extension character varying(20) COLLATE pg_catalog."default";

COMMENT ON COLUMN documents.attachments.extension
    IS 'File Extension (to correctly display the icon and manage MIME informations)';
	
-- Column: documents.attachments.db_schema_id

-- ALTER TABLE IF EXISTS documents.attachments DROP COLUMN IF EXISTS db_schema_id;

ALTER TABLE IF EXISTS documents.attachments
    ADD COLUMN IF NOT EXISTS db_schema_id integer;
	
-- Column: documents.attachments.flg_internet

-- ALTER TABLE IF EXISTS documents.attachments DROP COLUMN IF EXISTS flg_internet;

ALTER TABLE IF EXISTS documents.attachments
    ADD COLUMN IF NOT EXISTS flg_internet boolean NOT NULL DEFAULT false;

COMMENT ON COLUMN documents.attachments.flg_internet
    IS 'Flag Internet Visible Field';
	
-- Column: documents.attachments.jguid

-- ALTER TABLE IF EXISTS documents.attachments DROP COLUMN IF EXISTS jguid;

ALTER TABLE IF EXISTS documents.attachments
    ADD COLUMN IF NOT EXISTS jguid uuid NOT NULL;	
	
DROP VIEW IF EXISTS documents.attachments_view;

CREATE OR REPLACE VIEW documents.attachments_view
 AS
 SELECT a.doc_id,
    a.blob_id,
    a.blob_jguid,
    a.location,
    a.filename,
    a.description,
    a.context,
    a.extension,
    a.db_schema_id,
    a.flg_internet,
    a.jguid,
	a.deleted, 
    f.blob_file,
    f.blob_size,
    f.blob_key,
    f.filename AS blob_filename,
    f.is_external,
    f.insert_date,
    f.isresource,
    f.directory_id,
    f.db_user_id,
    d.directory_path
   FROM ((documents.attachments a
     JOIN cloud.blob_files f ON ((f.blob_id = a.blob_id)))
     LEFT JOIN cloud.directories d ON ((f.directory_id = d.directory_id)));

ALTER TABLE IF EXISTS documents.attachments_view
    OWNER TO ergo;


CREATE TRIGGER attachments_view_ioi_trg
    INSTEAD OF INSERT
    ON documents.attachments_view
    FOR EACH ROW
    EXECUTE PROCEDURE  documents.attachments_view_insert_trg();


CREATE TRIGGER attachments_view_iou_trg
    INSTEAD OF UPDATE 
    ON documents.attachments_view
    FOR EACH ROW
    EXECUTE PROCEDURE documents.attachments_view_update_trg();

