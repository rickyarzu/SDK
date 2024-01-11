ALTER TABLE IF EXISTS workflow.attachments
    ADD COLUMN IF NOT EXISTS jguid uuid;
	
ALTER TABLE IF EXISTS workflow.attachments
    ADD COLUMN IF NOT EXISTS flg_internet boolean NOT NULL DEFAULT False;

COMMENT ON COLUMN workflow.attachments.flg_internet
    IS 'if true the record should be displayed on website for customers';
	
ALTER TABLE IF EXISTS workflow.attachments
    ADD CONSTRAINT attachments_jpk UNIQUE (jguid);

