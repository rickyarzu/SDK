-- Column: messaging.message_sent.json_message

-- ALTER TABLE IF EXISTS messaging.message_sent DROP COLUMN IF EXISTS json_message;

ALTER TABLE IF EXISTS messaging.message_sent
    ADD COLUMN json_message jsonb;