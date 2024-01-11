-- Table: sports.match_players

-- DROP TABLE IF EXISTS sports.match_players;

CREATE TABLE IF NOT EXISTS sports.match_players
(
	id bigint NOT NULL, 
    match_id integer NOT NULL,
    player_id integer NOT NULL,
    minutes smallint,
    vote real,
    played boolean,
    team_id smallint NOT NULL,
    pos smallint,
    subst_id integer,
    score smallint,
    self_score smallint,
    conceded smallint DEFAULT 0,
    since smallint DEFAULT 1,
    until smallint DEFAULT 90,
    sent_off smallint DEFAULT 0,
    injuries smallint DEFAULT 0,
    db_schema_id integer,
    jguid uuid NOT NULL DEFAULT uuid_generate_v1(),
    deleted boolean DEFAULT false,
    insert_date timestamp with time zone,
    update_date timestamp with time zone,
    user_insert character varying(128) COLLATE pg_catalog."default",
    user_update character varying(128) COLLATE pg_catalog."default",
    CONSTRAINT ft_match_players_Pk PRIMARY KEY (id),
    CONSTRAINT ft_match_players_uk UNIQUE (match_id, player_id, team_id),
    CONSTRAINT ft_match_players_jguid_uk UNIQUE (jguid),
    CONSTRAINT ft_matchplayers_match_fk FOREIGN KEY (match_id)
        REFERENCES sports.matches (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS sports.match_players
    OWNER to ergo;

COMMENT ON COLUMN sports.match_players.sent_off
    IS 'If The player was sent off from the match usually is a 0 value';

COMMENT ON COLUMN sports.match_players.jguid
    IS 'guid unique identifier across DBs';
-- Index: ft_match_players_match_id_fk_ndx

-- DROP INDEX IF EXISTS sports.match_players_match_id_fk_ndx;

CREATE INDEX IF NOT EXISTS ft_match_players_match_id_fk_ndx
    ON sports.match_players USING btree
    (match_id ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: ft_match_players_player_team_ndx

-- DROP INDEX IF EXISTS sports.match_players_player_team_ndx;

CREATE INDEX IF NOT EXISTS ft_match_players_player_team_ndx
    ON sports.match_players USING btree
    (player_id ASC NULLS LAST, team_id ASC NULLS LAST)
    TABLESPACE pg_default;

ALTER TABLE IF EXISTS sports.match_players
    CLUSTER ON ft_match_players_player_team_ndx;
-- Index: ft_match_players_team_id_ndx

-- DROP INDEX IF EXISTS sports.match_players_team_id_ndx;

CREATE INDEX IF NOT EXISTS ft_match_players_team_id_ndx
    ON sports.match_players USING btree
    (team_id ASC NULLS LAST)
    TABLESPACE pg_default;

-- Trigger: fmtp_bi_trg

-- DROP TRIGGER IF EXISTS fmtp_bi_trg ON sports.match_players;

CREATE TRIGGER match_players_biu_trg
    BEFORE INSERT OR UPDATE 
    ON sports.match_players
    FOR EACH ROW
    EXECUTE PROCEDURE sports.insert_defaults_trg();