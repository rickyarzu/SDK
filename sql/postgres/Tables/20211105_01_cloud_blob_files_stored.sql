ALTER TABLE IF EXISTS cloud.blob_files
    ADD COLUMN IF NOT EXISTS flg_stored boolean NOT NULL DEFAULT False;

ALTER TABLE IF EXISTS cloud.directories
    ADD COLUMN IF NOT EXISTS deleted boolean NOT NULL DEFAULT False;
	
-- Column: cloud.directories.jguid

-- ALTER TABLE IF EXISTS cloud.directories DROP COLUMN IF EXISTS jguid;

ALTER TABLE IF EXISTS cloud.directories
    ADD COLUMN IF NOT EXISTS jguid uuid NOT NULL;

