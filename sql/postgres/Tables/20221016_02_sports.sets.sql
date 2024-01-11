DROP TABLE IF EXISTS sports.sets;
DROP SEQUENCE IF EXISTS sports.sets_seq;
CREATE SEQUENCE sports.sets_seq;

ALTER SEQUENCE sports.sets_seq
    OWNER TO ergo;
	
CREATE TABLE sports.sets
(
    id bigint NOT NULL,
    match_id integer NOT NULL,
    score_home smallint NOT NULL DEFAULT 0,
    score_visitors smallint NOT NULL DEFAULT 0,
    remote_id bigint,
    db_schema_id integer,	
    jguid uuid NOT NULL DEFAULT uuid_generate_v1(),
    deleted boolean DEFAULT false,
	insert_date timestamp with time zone, 
	update_date timestamp with time zone, 
	user_insert character varying (128), 
	user_update character varying (128), 
    CONSTRAINT sets_pk PRIMARY KEY (id),
    CONSTRAINT sets_jguid_uk UNIQUE (jguid),
    CONSTRAINT sets_matches_fk FOREIGN KEY (match_id)
        REFERENCES sports.matches (id) MATCH SIMPLE
)
WITH (
    OIDS = FALSE
);

ALTER TABLE IF EXISTS sports.sets
    OWNER to ergo;
	
CREATE TRIGGER sets_bi_trg
    BEFORE INSERT OR UPDATE 
    ON sports.sets
    FOR EACH ROW
    EXECUTE PROCEDURE sports.insert_defaults_trg();

COMMENT ON TABLE sports.sets
    IS 'Sets Played in Matches';