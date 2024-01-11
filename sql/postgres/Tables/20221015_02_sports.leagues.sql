-- Table: sports.leagues

DROP TABLE IF EXISTS sports.leagues;
DROP SEQUENCE IF EXISTS sports.leagues_seq;
CREATE SEQUENCE sports.leagues_seq;

ALTER SEQUENCE sports.leagues_seq
    OWNER TO ergo;

CREATE TABLE IF NOT EXISTS sports.leagues
(
    id smallint NOT NULL,
    league_name character varying(128) COLLATE pg_catalog."default",
    country_id integer NOT NULL DEFAULT 1::integer,
    league_position smallint,
    league_code character varying(6) COLLATE pg_catalog."default",
    db_schema_id integer NOT NULL DEFAULT 0,
    remote_id smallint,
    promotedcss character varying(128) COLLATE pg_catalog."default" DEFAULT 'promotion'::character varying,
    playoffcss character varying(128) COLLATE pg_catalog."default" NOT NULL DEFAULT 'playoff'::character varying,
    championscss character varying(128) COLLATE pg_catalog."default" NOT NULL DEFAULT 'champions'::character varying,
    playoutcss character varying(128) COLLATE pg_catalog."default" NOT NULL DEFAULT 'playout'::character varying,
    relegationcss character varying(128) COLLATE pg_catalog."default" NOT NULL DEFAULT 'retrocession'::character varying,
    all_players boolean DEFAULT false,
    jguid uuid NOT NULL DEFAULT uuid_generate_v1(),
    deleted boolean DEFAULT false,
	insert_date timestamp with time zone, 
	update_date timestamp with time zone, 
	user_insert character varying (128), 
	user_update character varying (128), 
    CONSTRAINT leagues_pk PRIMARY KEY (id),
    CONSTRAINT leagues_jguid_uk UNIQUE (jguid),
    CONSTRAINT leagues_name_uk UNIQUE (league_name, country_id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS sports.leagues
    OWNER to ergo;

COMMENT ON TABLE sports.leagues
    IS 'These are all the leagues you can find in all seasons in a Country or Federation or Region';

COMMENT ON COLUMN sports.leagues.id
    IS 'This is the unique id of a League';

COMMENT ON COLUMN sports.leagues.league_name
    IS 'This is the name of the league';

COMMENT ON COLUMN sports.leagues.country_id
    IS 'external iso country code on iso table default ''ITA''';

COMMENT ON COLUMN sports.leagues.league_position
    IS 'position';

COMMENT ON COLUMN sports.leagues.league_code
    IS 'The shortcode for the league';

COMMENT ON COLUMN sports.leagues.all_players
    IS 'If all players can enter in the match (like on 5 player''s or 7 player''s sports teams) is true else (on 11 player''s leagues is set to false)';

COMMENT ON COLUMN sports.leagues.jguid
    IS 'guid unique identifier across DBs';
-- Index: league_name_ndx

-- DROP INDEX IF EXISTS sports.league_name_ndx;

CREATE INDEX IF NOT EXISTS league_name_ndx
    ON sports.leagues USING btree
    (league_name COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;

-- Trigger: flgs_bi_trg

-- DROP TRIGGER IF EXISTS flgs_bi_trg ON sports.leagues;

CREATE TRIGGER leagues_bi_trg
    BEFORE INSERT OR UPDATE 
    ON sports.leagues
    FOR EACH ROW
    EXECUTE PROCEDURE sports.insert_defaults_trg();
	