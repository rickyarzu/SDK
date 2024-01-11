-- Table: sports.championships

--DROP TABLE IF EXISTS sports.championships;
--DROP SEQUENCE sports.championships_seq;
CREATE SEQUENCE IF NOT EXISTS sports.championships_seq;

ALTER SEQUENCE sports.championships_seq
    OWNER TO enterprisedb;

CREATE TABLE IF NOT EXISTS sports.championships
(
	id integer NOT NULL,
    season_id smallint NOT NULL,
    league_id smallint NOT NULL,
    promoted smallint,
    playoff smallint,
    relegation smallint,
    champions smallint,
    playout smallint,
    teams smallint NOT NULL DEFAULT 0,
    db_schema_id integer DEFAULT 32,
    jguid uuid NOT NULL DEFAULT uuid_generate_v1(),
    deleted boolean DEFAULT false,
	insert_date timestamp with time zone, 
	update_date timestamp with time zone, 
	user_insert character varying (128), 
	user_update character varying (128),
	CONSTRAINT championships_pk PRIMARY KEY (id),
    CONSTRAINT championships_uk UNIQUE (season_id, league_id),
    CONSTRAINT jguid_uk UNIQUE (jguid),
    CONSTRAINT campionships_leagues_fk FOREIGN KEY (league_id)
        REFERENCES sports.leagues (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT championships_seasons_fk FOREIGN KEY (season_id)
        REFERENCES sports.seasons (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS sports.championships
    OWNER to ergo;

COMMENT ON TABLE sports.championships
    IS 'This is the table of all the Championships';

COMMENT ON COLUMN sports.championships.season_id
    IS 'Unique id for season id';

COMMENT ON COLUMN sports.championships.league_id
    IS 'The unique id of the league in this championship';

COMMENT ON COLUMN sports.championships.jguid
    IS 'guid unique identifier across DBs';
-- Index: fki_campionships_leagues_fk

-- DROP INDEX IF EXISTS sports.fki_campionships_leagues_fk;

CREATE INDEX IF NOT EXISTS fki_campionships_leagues_fk
    ON sports.championships USING btree
    (league_id ASC NULLS LAST)
    TABLESPACE pg_default;

-- Trigger: fchm_bi_trg

DROP TRIGGER IF EXISTS championships_bi_trg ON sports.championships;

CREATE TRIGGER championships_bi_trg
    BEFORE INSERT OR UPDATE 
    ON sports.championships
    FOR EACH ROW
    EXECUTE PROCEDURE sports.insert_defaults_trg();