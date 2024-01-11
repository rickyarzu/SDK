-- Table: sports.team_players

-- DROP TABLE IF EXISTS sports.team_players;

CREATE SEQUENCE IF NOT EXISTS sports.team_players_seq
    CACHE 2;

ALTER SEQUENCE sports.team_players_seq
    OWNER TO ergo;

CREATE TABLE IF NOT EXISTS sports.team_players
(
    id bigint NOT NULL,
    team_id smallint NOT NULL,
    player_id integer NOT NULL,
    season_id smallint NOT NULL,
    since date,
    until date,
    club_origin_id integer,
    scored smallint,
    self_scored smallint,
    conceded smallint,
    sent_off smallint,
    injuries smallint,
    minutes smallint,
    matches integer,
    score integer,
    votes double precision,
    remote_id integer,
    db_schema_id integer,
    jguid uuid NOT NULL DEFAULT uuid_generate_v1(),
    deleted boolean DEFAULT false,
    insert_date timestamp with time zone,
    update_date timestamp with time zone,
    user_insert character varying(128) COLLATE pg_catalog."default",
    user_update character varying(128) COLLATE pg_catalog."default",
    CONSTRAINT team_players_pk PRIMARY KEY (id),
    CONSTRAINT ftmp_jguid_uk UNIQUE (jguid),
    CONSTRAINT team_players_uk UNIQUE (team_id, player_id, season_id),
    CONSTRAINT players_teams_fk FOREIGN KEY (team_id)
        REFERENCES sports.teams (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT playerteam_players_fk FOREIGN KEY (player_id)
        REFERENCES sports.players (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT playerteam_season_id FOREIGN KEY (season_id)
        REFERENCES sports.seasons (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS sports.team_players
    OWNER to ergo;

COMMENT ON COLUMN sports.team_players.team_id
    IS 'Team ID';

COMMENT ON COLUMN sports.team_players.player_id
    IS 'foreing key to player anagraph id';

COMMENT ON COLUMN sports.team_players.season_id
    IS 'foreign key to season_id';

COMMENT ON COLUMN sports.team_players.jguid
    IS 'guid unique identifier across DBs';

-- Trigger: team_players_biu_trg

-- DROP TRIGGER IF EXISTS team_players_biu_trg ON sports.team_players;

DROP TRIGGER IF EXISTS team_players_biu_trg ON sports.team_players;

CREATE TRIGGER team_players_biu_trg
    BEFORE INSERT OR UPDATE 
    ON sports.team_players
    FOR EACH ROW
    EXECUTE PROCEDURE sports.insert_defaults_trg();