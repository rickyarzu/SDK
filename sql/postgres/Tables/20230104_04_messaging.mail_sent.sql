-- Table: messaging.mail_sent

-- DROP TABLE IF EXISTS messaging.mail_sent;

CREATE TABLE IF NOT EXISTS messaging.mail_sent
(
    -- Inherited from table jpublic.table_template: id integer NOT NULL DEFAULT 0,
    -- Inherited from table jpublic.table_template: db_schema_id integer,
    -- Inherited from table jpublic.table_template: jguid uuid NOT NULL DEFAULT uuid_generate_v1(),
    -- Inherited from table jpublic.table_template: deleted boolean DEFAULT false,
    -- Inherited from table jpublic.table_template: insert_date timestamp with time zone,
    -- Inherited from table jpublic.table_template: update_date timestamp with time zone,
    -- Inherited from table jpublic.table_template: user_insert character varying(128) COLLATE pg_catalog."default",
    -- Inherited from table jpublic.table_template: user_update character varying(128) COLLATE pg_catalog."default",
    mail_message json,
    anagraph_id integer
)
    INHERITS (jpublic.table_template)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS messaging.mail_sent
    OWNER to ergo;