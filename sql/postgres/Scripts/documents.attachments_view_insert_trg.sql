-- FUNCTION: documents.attachments_view_insert_trg()

-- DROP FUNCTION IF EXISTS documents.attachments_view_insert_trg();

CREATE OR REPLACE FUNCTION documents.attachments_view_insert_trg()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
declare
 vCount integer; 
begin

    if (New.blob_id is null) or (New.Blob_Id = 0) then
       New.blob_id:=nextval('cloud.file_seq');
    end if;
	
	if new.isresource is null then
       New.isresource := false; 
    end if;
	
	if new.jguid is null then
       New.jguid :=  public.uuid_generate_v1mc() ;
    end if;
	
	-- new.insert_date
	if new.insert_date is null then
       New.insert_date := current_timestamp; 
    end if;	
	
	if new.location is null then
       New.location := 'G'; 
    end if;
	
	if new.deleted is null then
	  new.deleted := false; 
	end if; 
	
	if new.blob_jguid is null then
	  new.blob_jguid := new.jguid; 
	end if; 
	
    if new.directory_path is not null then 
	  select  directory_id into new.directory_id from cloud.directories d where d.directory_path = lower(new.directory_path); 
	  if new.directory_id is null then 
	    insert into cloud.directories (directory_id, db_schema_id, directory_name, directory_path, jguid, deleted)
	      values (nextval('cloud.cloud_directories_seq'), new.db_schema_id, new.directory_path, new.directory_path, new.jguid, false); 
	  end if; 
	end if; 
	
BEGIN
  INSERT INTO documents.attachments (
    jguid, 
    doc_id,
    blob_id,
    blob_jguid,
    location,
    filename,
    description,
    context,
    extension,
    db_schema_id,
	flg_internet, 
	deleted
  )
  VALUES (
    new.jguid, 
    new.doc_id,
    new.blob_id,
    new.jguid,
    new.location,
    new.filename,
    new.description,
    new.context,
    new.extension,
    new.db_schema_id,
	new.flg_internet, 
	new.deleted
  );
    exception when others then 
    raise exception 'INSERT INTO documenti.attachments (New.Blob_Id = %):  %', New.blob_jguid, SQLERRM;
END; 
  

begin  
  INSERT INTO cloud.blob_files (
    blob_id,
    blob_file,
    blob_size,
    db_schema_id,
    blob_key,
    db_user_id,
    cblb_jguid,
    cblb_deleted,
    file_ext,
    filename,
    isresource,
    is_external,
    ex_location,
    jguid,
    insert_date,
    description,
	directory_id
  )
  VALUES (
    new.blob_id,
    new.blob_file,
    new.blob_size,
    new.db_schema_id,
    new.blob_key,
    new.db_user_id,
    new.jguid,
    new.deleted,
    new.extension,
    new.filename,
    new.isresource,
    new.is_external,
    new.location,
    new.jguid,
    new.insert_date,
    new.description,
	new.directory_id
  );  
  
    exception when others then 
    raise exception 'INSERT INTO documenti.attachments: %', SQLERRM;
end; 
  
  return new; 
  
  exception when others then 
    raise exception 'attachments view insert: %', SQLERRM;
end; 
$BODY$;

ALTER FUNCTION documents.attachments_view_insert_trg()
    OWNER TO ergo;

COMMENT ON FUNCTION documents.attachments_view_insert_trg()
    IS 'Insert Trigger procedure for attachments';
