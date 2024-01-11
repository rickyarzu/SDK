-- Table: sports.players

DROP TABLE IF EXISTS sports.players;

CREATE TABLE IF NOT EXISTS sports.players
(
    id integer NOT NULL,
    anagraph_id integer NOT NULL, 
    birth_date date,
    birth_year smallint,
    first_name character varying(128) COLLATE pg_catalog."default" NOT NULL,
    family_name character varying(128) COLLATE pg_catalog."default",
    birth_place character varying(128) COLLATE pg_catalog."default",
    notes text COLLATE pg_catalog."default",
    role_id smallint,
    height smallint,
    weight smallint,
    remote_id integer,
    db_schema_id integer,
    jguid uuid NOT NULL DEFAULT uuid_generate_v1(),
    deleted boolean DEFAULT false,
    insert_date timestamp with time zone,
    update_date timestamp with time zone,
    user_insert character varying(128) COLLATE pg_catalog."default",
    user_update character varying(128) COLLATE pg_catalog."default",
    CONSTRAINT players_pk PRIMARY KEY (id),
    CONSTRAINT players_jguid_uk UNIQUE (jguid),
    CONSTRAINT fk_players FOREIGN KEY (role_id)
        REFERENCES sports.roles (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS sports.players
    OWNER to ergo;

COMMENT ON TABLE sports.players
    IS 'The player''s table';

COMMENT ON COLUMN sports.players.jguid
    IS 'guid unique identifier across DBs';
-- Index: idx_players

-- DROP INDEX IF EXISTS football.idx_players;

CREATE INDEX IF NOT EXISTS idx_players
    ON sports.players USING btree
    (role_id ASC NULLS LAST)
    TABLESPACE pg_default;

-- Trigger: pplr_bi_trg

-- DROP TRIGGER IF EXISTS pplr_bi_trg ON sports.players;

CREATE TRIGGER players_biu_trg
    BEFORE INSERT OR UPDATE 
    ON sports.players
    FOR EACH ROW
    EXECUTE PROCEDURE sports.insert_defaults_trg();