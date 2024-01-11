-- Table: sports.match_events

DROP TABLE IF EXISTS sports.match_events;

CREATE TABLE IF NOT EXISTS sports.match_events
(
    id bigint NOT NULL DEFAULT 1,
    match_id integer,
    team_id smallint,
    player_id integer,
    event_id smallint,
    minute integer,
    value smallint NOT NULL DEFAULT 1,
    notes character varying(256) COLLATE pg_catalog."default",
    favor_team_id integer,
    game_set character varying(128) COLLATE pg_catalog."default",
    db_schema_id integer,
    jguid uuid NOT NULL DEFAULT uuid_generate_v1(),
    deleted boolean DEFAULT false,
    insert_date timestamp with time zone,
    update_date timestamp with time zone,
    user_insert character varying(128) COLLATE pg_catalog."default",
    user_update character varying(128) COLLATE pg_catalog."default",
    CONSTRAINT ft_match_events_pk PRIMARY KEY (id),
    CONSTRAINT match_events_jguid_uk UNIQUE (jguid),
    CONSTRAINT ft_matchevent_matches_fk FOREIGN KEY (match_id)
        REFERENCES sports.matches (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT ft_matchevent_player_fk FOREIGN KEY (player_id)
        REFERENCES sports.players (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT ft_matchevent_team_fk FOREIGN KEY (team_id)
        REFERENCES sports.teams (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE,
    autovacuum_enabled = TRUE
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS sports.match_events
    OWNER to ergo;

COMMENT ON COLUMN sports.match_events.value
    IS 'The Value inserted to count';

COMMENT ON COLUMN sports.match_events.jguid
    IS 'guid unique identifier across DBs';
-- Index: ft_match_events_matches_fk_ndx

-- DROP INDEX IF EXISTS sports.match_events_matches_fk_ndx;

CREATE INDEX IF NOT EXISTS ft_match_events_matches_fk_ndx
    ON sports.match_events USING btree
    (match_id ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: ft_match_events_player_ndx

-- DROP INDEX IF EXISTS sports.match_events_player_ndx;

CREATE INDEX IF NOT EXISTS ft_match_events_player_ndx
    ON sports.match_events USING btree
    (player_id ASC NULLS LAST)
    TABLESPACE pg_default;

-- Trigger: fmth_bi_trg

-- DROP TRIGGER IF EXISTS fmth_bi_trg ON sports.match_events;

CREATE TRIGGER match_events_biu_trg
    BEFORE INSERT OR UPDATE 
    ON sports.match_events
    FOR EACH ROW
    EXECUTE PROCEDURE sports.insert_defaults_trg();