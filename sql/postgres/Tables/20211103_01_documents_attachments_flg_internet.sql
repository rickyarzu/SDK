ALTER TABLE IF EXISTS documents.attachments
    ADD COLUMN IF NOT EXISTS flg_internet boolean NOT NULL DEFAULT False;

COMMENT ON COLUMN documents.attachments.flg_internet
    IS 'Flag Internet Visible Field';
	
ALTER TABLE IF EXISTS documents.attachments
    ADD COLUMN IF NOT EXISTS jguid uuid;
	
	