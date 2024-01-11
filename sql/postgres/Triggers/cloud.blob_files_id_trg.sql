-- FUNCTION: cloud.blob_files_id_trg()

-- DROP FUNCTION IF EXISTS cloud.blob_files_id_trg();

CREATE OR REPLACE FUNCTION cloud.blob_files_id_trg()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
begin
    if (New.blob_id is null) or (New.Blob_Id = 0) then
       New.blob_id:=nextval('cloud.file_seq');
    end if;
   
   New.blob_key := system.get_key(New.blob_id,  32);
         
   if New.insert_date is null then 
      New.insert_date := now(); 
   end if; 
		 
    if New.isresource is null then new.isresource := false; end if; 
      Return NEW;
end;
$BODY$;

ALTER FUNCTION cloud.blob_files_id_trg()
    OWNER TO postgres;

COMMENT ON FUNCTION cloud.blob_files_id_trg()
    IS 'begin
    if New.blob_id is null then
       New.club_id:=nextval(''cloud.file_seq'');
   end if;
         New.ext_file_key := system.get_key(blob_id,  32);
      Return NEW;
end;';
