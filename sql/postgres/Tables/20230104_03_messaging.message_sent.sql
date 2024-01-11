CREATE TABLE messaging.message_sent
(
    message text,
    anagraph_id integer
)
    INHERITS (jpublic.table_template)
WITH (
    OIDS = FALSE
);

ALTER TABLE IF EXISTS messaging.message_sent
    OWNER to ergo;