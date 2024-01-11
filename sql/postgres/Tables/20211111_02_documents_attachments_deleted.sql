-- Column: documents.attachments.deleted

-- ALTER TABLE IF EXISTS documents.attachments DROP COLUMN IF EXISTS deleted;

ALTER TABLE IF EXISTS documents.attachments
    ADD COLUMN IF NOT EXISTS deleted boolean;