-- Table: sports.matches

DROP TABLE IF EXISTS sports.matches;
DROP SEQUENCE IF EXISTS sports.matches_seq;
CREATE SEQUENCE sports.matches_seq;

ALTER SEQUENCE sports.matches_seq
    OWNER TO ergo;

CREATE TABLE IF NOT EXISTS sports.matches
(
    id integer NOT NULL DEFAULT 0,
    league_id smallint,
    season_id smallint,
    match_day_number smallint,
    match_time timestamp without time zone,
    match_date date,
    home_team_id integer,
    visitors_team_id integer,
    score_home smallint,
    score_visitor smallint,
    points_home smallint,
    points_visitors smallint,
    notes text COLLATE pg_catalog."default",
    confirmed boolean,
    home_notes character varying(1024) COLLATE pg_catalog."default",
    visitors_notes character varying(1024) COLLATE pg_catalog."default",
    suspended boolean,
    postponed boolean,
    forfeit boolean NOT NULL DEFAULT false,
    remote_id integer,
    field_id integer,
    article_url character varying(1024) COLLATE pg_catalog."default",
    video_url character varying(1024) COLLATE pg_catalog."default",
    db_schema_id integer,
    jguid uuid NOT NULL DEFAULT uuid_generate_v1(),
    deleted boolean DEFAULT false,
	insert_date timestamp with time zone, 
	update_date timestamp with time zone, 
	user_insert character varying (128), 
	user_update character varying (128), 
    CONSTRAINT matches_pk PRIMARY KEY (id),
    CONSTRAINT matches_jguid_uk UNIQUE (jguid),
    CONSTRAINT matches_home_uk UNIQUE (league_id, season_id, match_day_number, home_team_id),
    CONSTRAINT matches_visitor_uk UNIQUE (league_id, match_day_number, season_id, visitors_team_id),
	CONSTRAINT fk_matches_leagues FOREIGN KEY (league_id)
		REFERENCES sports.leagues (id) MATCH SIMPLE
		ON UPDATE NO ACTION
		ON DELETE NO ACTION,
    CONSTRAINT fk_matches_seasons FOREIGN KEY (season_id)
		REFERENCES sports.seasons (id) MATCH SIMPLE
		ON UPDATE CASCADE
		ON DELETE NO ACTION,
    CONSTRAINT fk_matches_calendar FOREIGN KEY (season_id, league_id, match_day_number )
        REFERENCES sports.calendar (season_id, league_id, match_day_number ) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT matches_champ_fk FOREIGN KEY (season_id, league_id)
        REFERENCES sports.championships (season_id, league_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS sports.matches
    OWNER to ergo;

COMMENT ON TABLE sports.matches
    IS 'This is the sports Matches Calendar, it should be used for other sports but must be revised';

COMMENT ON COLUMN sports.matches.id
    IS 'Unique id for a calendar match and primary Key';

COMMENT ON COLUMN sports.matches.jguid
    IS 'guid unique identifier across DBs';
-- Index: matches_home_team_id_ndx

-- DROP INDEX IF EXISTS sports.matches_home_team_id_ndx;

CREATE INDEX IF NOT EXISTS matches_home_team_id_ndx
    ON sports.matches USING btree
    (home_team_id ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: matches_match_id_ndx

-- DROP INDEX IF EXISTS sports.matches_match_id_ndx;

CREATE UNIQUE INDEX IF NOT EXISTS matches_match_id_ndx
    ON sports.matches USING btree
    (id ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: matches_season_league_cluster

-- DROP INDEX IF EXISTS sports.matches_season_league_cluster;

CREATE INDEX IF NOT EXISTS matches_season_league_cluster
    ON sports.matches USING btree
    (league_id ASC NULLS LAST, season_id ASC NULLS LAST)
    TABLESPACE pg_default;

ALTER TABLE IF EXISTS sports.matches
    CLUSTER ON matches_season_league_cluster;
-- Index: idx_matches

-- DROP INDEX IF EXISTS sports.idx_matches;

CREATE INDEX IF NOT EXISTS idx_matches
    ON sports.matches USING btree
    (season_id ASC NULLS LAST, league_id ASC NULLS LAST, match_day_number ASC NULLS LAST)
    TABLESPACE pg_default;


-- DROP TRIGGER IF EXISTS matches_bi_trg ON sports.matches;

CREATE TRIGGER matches_bi_trg
    BEFORE INSERT
    ON sports.matches
    FOR EACH ROW
    EXECUTE PROCEDURE sports.insert_defaults_trg();