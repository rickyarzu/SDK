
update   documents.attachments  set jguid = blob_jguid where jguid is null;	

ALTER TABLE IF EXISTS documents.attachments
    ALTER COLUMN jguid SET NOT NULL;