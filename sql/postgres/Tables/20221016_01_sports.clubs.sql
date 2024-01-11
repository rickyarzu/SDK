-- Table: sports.clubs

DROP TABLE IF EXISTS sports.clubs;
DROP SEQUENCE IF EXISTS sports.clubs_seq;
CREATE SEQUENCE sports.clubs_seq;

ALTER SEQUENCE sports.clubs_seq
    OWNER TO ergo;

CREATE TABLE IF NOT EXISTS sports.clubs
(
    id integer NOT NULL DEFAULT nextval('sports.clubs_seq'),
    club_name character varying(128) COLLATE pg_catalog."default",
    foundation_date date,
    president character varying(128) COLLATE pg_catalog."default",
    stadium_id smallint,
    town character varying(128) COLLATE pg_catalog."default",
    vice_president character varying(128) COLLATE pg_catalog."default",
    team_manager character varying(128) COLLATE pg_catalog."default",
    athletic_manager character varying(128) COLLATE pg_catalog."default",
    colors character varying(128) COLLATE pg_catalog."default",
    website character varying(128) COLLATE pg_catalog."default",
    remote_id integer,
    anagraph_id integer,
    club_image bytea,
    db_schema_id integer,	
    jguid uuid NOT NULL DEFAULT uuid_generate_v1(),
    deleted boolean DEFAULT false,
	insert_date timestamp with time zone, 
	update_date timestamp with time zone, 
	user_insert character varying (128), 
	user_update character varying (128), 
    CONSTRAINT clubs_pk PRIMARY KEY (id),
    CONSTRAINT clubs_jguid_uk UNIQUE (jguid)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS sports.clubs
    OWNER to postgres;

COMMENT ON TABLE sports.clubs
    IS 'These are the sports or ... well .. sport clubs :) ';

COMMENT ON COLUMN sports.clubs.id
    IS 'This is the sports club unique ID.... ';

COMMENT ON COLUMN sports.clubs.club_name
    IS 'The sports Club Name';

COMMENT ON COLUMN sports.clubs.foundation_date
    IS 'Date of ''birth'' of the sports club :) ';

COMMENT ON COLUMN sports.clubs.athletic_manager
    IS 'direttore sportivo';

COMMENT ON COLUMN sports.clubs.colors
    IS 'colori sociali';

COMMENT ON COLUMN sports.clubs.jguid
    IS 'guid unique identifier across DBs';

-- Trigger: fclb_bi_trg

-- DROP TRIGGER IF EXISTS fclb_bi_trg ON sports.clubs;

CREATE TRIGGER clubs_bi_trg
    BEFORE INSERT OR UPDATE 
    ON sports.clubs
    FOR EACH ROW
    EXECUTE PROCEDURE sports.insert_defaults_trg();