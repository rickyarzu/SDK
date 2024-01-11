-- Column: cloud.directories.jguid

-- ALTER TABLE IF EXISTS cloud.directories DROP COLUMN IF EXISTS jguid;

ALTER TABLE IF EXISTS cloud.directories
    ADD COLUMN IF NOT EXISTS jguid uuid NOT NULL;