-- Table: carservice.messages

-- DROP TABLE IF EXISTS carservice.messages;

CREATE TABLE IF NOT EXISTS carservice.messages
(
    -- Inherited from table jpublic.table_template: id integer NOT NULL DEFAULT 0,
    -- Inherited from table jpublic.table_template: db_schema_id integer,
    -- Inherited from table jpublic.table_template: jguid uuid NOT NULL DEFAULT uuid_generate_v1(),
    -- Inherited from table jpublic.table_template: deleted boolean DEFAULT false,
    -- Inherited from table jpublic.table_template: insert_date timestamp with time zone,
    -- Inherited from table jpublic.table_template: update_date timestamp with time zone,
    -- Inherited from table jpublic.table_template: user_insert character varying(128) COLLATE pg_catalog."default",
    -- Inherited from table jpublic.table_template: user_update character varying(128) COLLATE pg_catalog."default",
    anagraph_id integer,
    db_user_id integer,
    msgtype integer,
    msgtext text COLLATE pg_catalog."default",
    json json,
    booking_jguid uuid,
    timetable_jguid uuid
)
    INHERITS (jpublic.table_template)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS carservice.messages
    OWNER to ergo;

-- Trigger: messages_defaults_biu_trg

-- DROP TRIGGER IF EXISTS messages_defaults_biu_trg ON carservice.messages;

CREATE TRIGGER messages_defaults_biu_trg
    BEFORE INSERT OR UPDATE 
    ON carservice.messages
    FOR EACH ROW
    EXECUTE PROCEDURE jpublic.insert_defaults_trg();