-- Table: sports.calendar

DROP TABLE IF EXISTS sports.calendar;
DROP SEQUENCE IF EXISTS sports.calendar_seq;
CREATE SEQUENCE sports.calendar_seq;

ALTER SEQUENCE sports.calendar_seq
    OWNER TO ergo;

CREATE TABLE IF NOT EXISTS sports.calendar
(
    id bigint NOT NULL default nextval('sports.calendar_seq'),
    season_id smallint NOT NULL,
    league_id smallint NOT NULL,
    match_day_number smallint NOT NULL,
    match_day_date date,
    match_day_played date,
    rest_team_id integer,
    db_schema_id integer DEFAULT 32,
    jguid uuid NOT NULL DEFAULT uuid_generate_v1(),
    deleted boolean DEFAULT false,
	insert_date timestamp with time zone, 
	update_date timestamp with time zone, 
	user_insert character varying (128), 
	user_update character varying (128), 
    CONSTRAINT calendar_pk PRIMARY KEY (id),
    CONSTRAINT calendar_days_uk UNIQUE (season_id, league_id, match_day_number),
    CONSTRAINT calendar_jguid_uk UNIQUE (jguid),
    CONSTRAINT fk_calendar_championship FOREIGN KEY (league_id, season_id)
        REFERENCES sports.championships (league_id, season_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS sports.calendar
    OWNER to ergo;

COMMENT ON COLUMN sports.calendar.jguid
    IS 'guid unique identifier across DBs';


CREATE INDEX IF NOT EXISTS idx_calendar
    ON sports.calendar USING btree
    (season_id ASC NULLS LAST, league_id ASC NULLS LAST)
    TABLESPACE pg_default;

CREATE TRIGGER calendar_bi_trg
    BEFORE INSERT
    ON sports.calendar
    FOR EACH ROW
    EXECUTE PROCEDURE sports.insert_defaults_trg();