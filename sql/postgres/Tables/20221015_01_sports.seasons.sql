-- Table: sports.ft_seasons

DROP TABLE IF EXISTS sports.seasons;
DROP SEQUENCE IF EXISTS sports.seasons_seq;
CREATE SEQUENCE sports.seasons_seq;

ALTER SEQUENCE sports.seasons_seq
    OWNER TO ergo;
	
CREATE TABLE IF NOT EXISTS sports.seasons
(
    id integer DEFAULT nextval('sports.seasons_seq') NOT NULL,
    season_des character varying(20) COLLATE pg_catalog."default",
    season_code character(5) COLLATE pg_catalog."default",
    db_schema_id integer NOT NULL DEFAULT 11,
    order_number smallint,
    remote_id smallint,
    jguid uuid NOT NULL DEFAULT uuid_generate_v1(),
    deleted boolean DEFAULT false,
	insert_date timestamp with time zone, 
	update_date timestamp with time zone, 
	user_insert character varying (128), 
	user_update character varying (128), 
    CONSTRAINT seasons_pk PRIMARY KEY (id),
    CONSTRAINT seasons_jguid_uk UNIQUE (jguid)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS sports.seasons
    OWNER to ergo;

COMMENT ON TABLE sports.seasons
    IS 'This is the sports seasons database';

COMMENT ON COLUMN sports.seasons.id
    IS 'This is the Season ID unique identifier. Every Season can have a ''starting date'' and ''ending date'' but they are quite optional. 

';

COMMENT ON COLUMN sports.seasons.season_des
    IS 'This is the real Description of the season';

COMMENT ON COLUMN sports.seasons.jguid
    IS 'guid unique identifier across DBs';
	
COMMENT ON CONSTRAINT seasons_pk ON sports.seasons
    IS 'Primary Key For seasons is equal to ID';
	
-- FUNCTION: football.ft_rankings_id_trg()

-- DROP FUNCTION IF EXISTS football.ft_rankings_id_trg();

CREATE OR REPLACE FUNCTION SPORTS.seasons_id_trg()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
begin
     if New.ID is null then
          New.ID :=nextval('sports.seasons_seq');
      end if; 
      Return NEW;
end;
$BODY$;

ALTER FUNCTION sports.seasons_id_trg()
    OWNER TO ergo;
	
CREATE TRIGGER season_id_bi_trg
    BEFORE INSERT OR UPDATE 
    ON sports.seasons
    FOR EACH ROW
    EXECUTE PROCEDURE sports.seasons_id_trg();
	
CREATE TRIGGER season_default_biu_trg
    BEFORE INSERT OR UPDATE 
    ON sports.seasons
    FOR EACH ROW
    EXECUTE PROCEDURE  sports.insert_defaults_trg();
