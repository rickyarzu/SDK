-- Table: sports.event_types

-- DROP TABLE IF EXISTS sports.event_types;

CREATE TABLE IF NOT EXISTS sports.event_types
(
    id smallint NOT NULL DEFAULT 1,
    description character varying(20) COLLATE pg_catalog."default",
    score boolean,
    subst boolean,
    save boolean,
    accident boolean,
    db_schema_id integer,
    jguid uuid NOT NULL DEFAULT uuid_generate_v1(),
    deleted boolean DEFAULT false,
    insert_date timestamp with time zone,
    update_date timestamp with time zone,
    user_insert character varying(128) COLLATE pg_catalog."default",
    user_update character varying(128) COLLATE pg_catalog."default",
    CONSTRAINT events_pk PRIMARY KEY (id),
    CONSTRAINT guid_uk UNIQUE (jguid)	
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS sports.event_types
    OWNER to ergo;

COMMENT ON COLUMN sports.event_types.id
    IS 'Event type ID';

COMMENT ON COLUMN sports.event_types.description
    IS 'Short Event Description';

COMMENT ON COLUMN sports.event_types.jguid
    IS 'guid unique identifier across DBs';

-- Trigger: fvnt_bi_trg

-- DROP TRIGGER IF EXISTS fvnt_bi_trg ON sports.event_types;

CREATE TRIGGER event_types_biu_trg
    BEFORE INSERT OR UPDATE 
    ON sports.event_types
    FOR EACH ROW
    EXECUTE PROCEDURE sports.insert_defaults_trg();