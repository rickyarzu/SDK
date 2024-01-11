-- FUNCTION: documents.attachments_view_update_trg()

-- DROP FUNCTION IF EXISTS documents.attachments_view_update_trg();

CREATE OR REPLACE FUNCTION documents.attachments_view_update_trg()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
begin
  if new.flg_internet is null then new.flg_internet = old.flg_internet; end if; 
  if new.location is null then new.location = old.location; end if;
  if new.doc_id is null then new.doc_id = old.doc_id; end if;
  if new.blob_id is null then new.blob_id = old.blob_id; end if;
  if new.blob_jguid is null then new.blob_jguid = old.blob_jguid; end if;
  if new.filename is null then new.filename = old.filename; end if;
  if new.db_schema_id is null then new.db_schema_id = old.db_schema_id; end if;
  if new.blob_key is null then new.blob_key = old.blob_key; end if;
  
  UPDATE documents.attachments SET
    doc_id = new.doc_id,
    blob_id = new.blob_id,
    blob_jguid = new.blob_jguid,
    location = new.location,
    filename = new.filename,
    description = new.description,
    context = new.context,
    "extension" = new.extension,
    db_schema_id = new.db_schema_id,
	deleted = new.deleted, 
	flg_internet = new.flg_internet 
  WHERE 
   jguid = old.jguid;
  
  begin
   UPDATE cloud.blob_files SET
    blob_id = new.blob_id, 
    blob_file = new.blob_file,
    blob_size = new.blob_size,
    db_schema_id = new.db_schema_id,
    blob_key = new.blob_key,
    db_user_id = new.db_user_id,
    --ispublic = new.ispublic,
    file_ext = new.extension,
    filename = new.filename,
    isresource = new.isresource,
    is_external = new.is_external,
    ex_location = new.location,
    jguid = new.blob_jguid,
    --insert_date = new.insert_date,
    description = new.description, 
	cblb_deleted = new.deleted, 
	cblb_jguid = new.jguid
  WHERE 
    jguid = new.jguid;
	
  exception when others then 
    raise exception 'attachments view blob_files UPDATE: %', SQLERRM;
	
  end; 

   return new; 
   
  exception when others then 
    raise exception 'attachments view UPDATE: %', SQLERRM;
	
end; 
$BODY$;

ALTER FUNCTION documents.attachments_view_update_trg()
    OWNER TO ergo;

COMMENT ON FUNCTION documents.attachments_view_update_trg()
    IS 'Attachments Update View Trigger';
