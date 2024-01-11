-- Table: football.ft_teams_championships

--DROP TABLE IF EXISTS football.ft_teams_championships;

CREATE TABLE IF NOT EXISTS sports.teams_championships
(
	id integer NOT NULL, 
    season_id smallint NOT NULL,
    league_id smallint NOT NULL,
    team_id smallint NOT NULL,
    "position" smallint,
    penalty smallint NOT NULL DEFAULT 0,
 	remote_id integer,
    db_schema_id integer,
    jguid uuid NOT NULL DEFAULT uuid_generate_v1(),
    deleted boolean DEFAULT false,
    insert_date timestamp with time zone,
    update_date timestamp with time zone,
    user_insert character varying(128) COLLATE pg_catalog."default",
    user_update character varying(128) COLLATE pg_catalog."default",
    CONSTRAINT teams_championships_pk PRIMARY KEY (id),
    CONSTRAINT teams_championships_jguid_uk UNIQUE (jguid),
    CONSTRAINT teams_championships_uk UNIQUE (season_id, league_id, team_id),
    CONSTRAINT teams_championships_fk FOREIGN KEY (league_id, season_id)
        REFERENCES sports.championships (league_id, season_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT ft_teams_championships_teams_fk FOREIGN KEY (team_id)
        REFERENCES sports.teams (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)  
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS sports.teams_championships
    OWNER to ergo;

COMMENT ON COLUMN sports.teams_championships.jguid
    IS 'guid unique identifier across DBs';

COMMENT ON CONSTRAINT ft_teams_championships_teams_fk ON sports.teams_championships
    IS 'Foreign key for teams playing in a championship';
-- Index: ft_teamchamp_ft_teams_fk

-- DROP INDEX IF EXISTS football.ft_teamchamp_ft_teams_fk;

CREATE INDEX IF NOT EXISTS ft_teamchamp_ft_teams_fk
    ON sports.teams_championships USING btree
    (team_id ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: ft_teams_championships_season_fk

-- DROP INDEX IF EXISTS football.ft_teams_championships_season_fk;

CREATE INDEX IF NOT EXISTS ft_teams_championships_season_fk
    ON sports.teams_championships USING btree
    (season_id ASC NULLS LAST)
    TABLESPACE pg_default;

-- Trigger: ftmc_bi_trg

-- DROP TRIGGER IF EXISTS ftmc_bi_trg ON football.ft_teams_championships;

CREATE TRIGGER teams_championships_biu_trg
    BEFORE INSERT OR UPDATE 
    ON sports.teams_championships
    FOR EACH ROW
    EXECUTE PROCEDURE  sports.insert_defaults_trg();