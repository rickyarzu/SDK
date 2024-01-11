-- Constraint: championships_pk

CREATE SEQUENCE sports.championships_seq;

ALTER SEQUENCE sports.championships_seq
    OWNER TO ergo;

ALTER TABLE IF EXISTS sports.calendar DROP CONSTRAINT IF EXISTS fk_calendar_championship;

ALTER TABLE IF EXISTS sports.championships
    ADD COLUMN IF NOT EXISTS id integer NOT NULL DEFAULT 0;

ALTER TABLE IF EXISTS sports.championships DROP CONSTRAINT IF EXISTS championships_pk;

CREATE SEQUENCE sports.calendar_seq;

ALTER SEQUENCE sports.calendar_seq
    OWNER TO ergo;

ALTER TABLE IF EXISTS sports.championships
    ADD CONSTRAINT championships_pk PRIMARY KEY (season_id, league_id);
	
ALTER TABLE IF EXISTS sports.championships
    ADD CONSTRAINT championships_pk PRIMARY KEY (id);
	
ALTER TABLE IF EXISTS sports.calendar
    ADD COLUMN IF NOT EXISTS championship_id integer NOT NULL;

ALTER TABLE IF EXISTS sports.calendar
    ADD CONSTRAINT fk_calendar_championship FOREIGN KEY (championship_id)
    REFERENCES sports.championships (id) MATCH SIMPLE
    ON UPDATE NO CASCADE
    ON DELETE NO ACTION;
	

