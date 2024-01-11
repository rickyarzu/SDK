CREATE TABLE carservice.timetable_files
(
    timetable_guid uuid NOT NULL,
    jguid uuid NOT NULL,
    insert_date time with time zone NOT NULL,
    file_extension character varying(20) NOT NULL,
    blob_id bigint,
    PRIMARY KEY (jguid)
);

ALTER TABLE IF EXISTS carservice.timetable_files
    OWNER to postgres;

COMMENT ON TABLE carservice.timetable_files
    IS 'A List of Files (Images, PDF, Signatures Attached to a Timetable Workflow). ';

COMMENT ON COLUMN carservice.timetable_files.timetable_guid
    IS 'Unique Foreign Key to TimeTable';

COMMENT ON COLUMN carservice.timetable_files.jguid
    IS 'UUID primary Key and Filename ';

COMMENT ON COLUMN carservice.timetable_files.blob_id
    IS 'Blob_id has a value only if a file is stored internally.';