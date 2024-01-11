CREATE OR REPLACE VIEW carservice.timetable_files_view AS
SELECT t.timetable_guid, t.jguid, t.file_extension, t.blob_id, b.blob_file, b.blob_size, b.db_schema_id, 
       b.blob_key, b.db_user_id, b.ispublic, b.file_ext, b.filename, b.isresource, b.is_external, b.ex_location, 
	   b.insert_date, b.description, b.flg_stored, b.directory_id
	FROM carservice.timetable_files t INNER JOIN cloud.blob_files b ON t.blob_id = b.blob_id;
