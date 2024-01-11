-- Table: sports.teams

-- DROP TABLE IF EXISTS sports.teams;

CREATE TABLE IF NOT EXISTS sports.teams
(
    id integer NOT NULL,
    club_id smallint NOT NULL,
    team_name character varying(128) COLLATE pg_catalog."default",
    trainer_id integer,
    image bytea,
    remote_id integer,
    db_schema_id integer,
    jguid uuid NOT NULL DEFAULT uuid_generate_v1(),
    deleted boolean DEFAULT false,
    insert_date timestamp with time zone,
    update_date timestamp with time zone,
    user_insert character varying(128) COLLATE pg_catalog."default",
    user_update character varying(128) COLLATE pg_catalog."default",
    CONSTRAINT teams_pk PRIMARY KEY (id),
    CONSTRAINT teams_jguid_uk UNIQUE (jguid),
    CONSTRAINT teams_clubs_fk FOREIGN KEY (club_id)
        REFERENCES sports.clubs (id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS sports.teams
    OWNER to ergo;

COMMENT ON TABLE sports.teams
    IS 'one of the teams of the club that partecipate in a championship';

COMMENT ON COLUMN sports.teams.id
    IS 'Unique id for the team';

COMMENT ON COLUMN sports.teams.trainer_id
    IS 'numero id anagrafica allenatore';

COMMENT ON COLUMN sports.teams.jguid
    IS 'guid unique identifier across DBs';
-- Index: fki_teams_clubs_fk

-- DROP INDEX IF EXISTS sports.fki_teams_clubs_fk;

CREATE INDEX IF NOT EXISTS fki_teams_clubs_fk
    ON sports.teams USING btree
    (club_id ASC NULLS LAST)
    TABLESPACE pg_default;

-- Trigger: teams_bi_trg

-- DROP TRIGGER IF EXISTS teams_bi_trg ON sports.teams;

CREATE TRIGGER teams_bi_trg
    BEFORE INSERT OR UPDATE 
    ON sports.teams
    FOR EACH ROW
    EXECUTE PROCEDURE sports.insert_defaults_trg();