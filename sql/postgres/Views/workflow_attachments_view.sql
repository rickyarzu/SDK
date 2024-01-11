-- View: documents.attachments_view
-- Column: cloud.blob_files.directory_id

-- ALTER TABLE IF EXISTS cloud.blob_files DROP COLUMN IF EXISTS directory_id;

ALTER TABLE IF EXISTS cloud.blob_files
    ADD COLUMN IF NOT EXISTS directory_id bigint;
	
-- Column: cloud.blob_files.is_external

-- ALTER TABLE IF EXISTS cloud.blob_files DROP COLUMN IF EXISTS is_external;

ALTER TABLE IF EXISTS cloud.blob_files
    ADD COLUMN IF NOT EXISTS is_external boolean;
	
-- Column: cloud.blob_files.insert_date

-- ALTER TABLE IF EXISTS cloud.blob_files DROP COLUMN IF EXISTS insert_date;

ALTER TABLE IF EXISTS cloud.blob_files
    ADD COLUMN IF NOT EXISTS insert_date timestamp without time zone;
	
	
DROP VIEW IF EXISTS workflow.attachments_view;

CREATE OR REPLACE VIEW workflow.attachments_view
 AS
 SELECT a.work_id,
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
   FROM ((workflow.attachments a
     JOIN cloud.blob_files f ON ((f.blob_id = a.blob_id)))
     LEFT JOIN cloud.directories d ON ((f.directory_id = d.directory_id)));

ALTER TABLE IF EXISTS workflow.attachments_view
    OWNER TO ergo;


CREATE TRIGGER attachments_view_ioi_trg
    INSTEAD OF INSERT
    ON workflow.attachments_view
    FOR EACH ROW
    EXECUTE PROCEDURE workflow.attachments_view_insert_trg();


CREATE TRIGGER attachments_view_iou_trg
    INSTEAD OF UPDATE 
    ON workflow.attachments_view
    FOR EACH ROW
    EXECUTE PROCEDURE workflow.attachments_view_update_trg();

