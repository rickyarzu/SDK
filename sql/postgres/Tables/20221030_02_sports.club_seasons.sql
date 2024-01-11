CREATE TABLE IF NOT EXISTS sports.club_seasons (
	club_id integer NOT NULL,
	season_id integer NOT NULL,
	club_name character varying(128),	
	remote_id integer,
	db_schema_id integer,
	jguid uuid DEFAULT uuid_generate_v1() NOT NULL,
	deleted boolean DEFAULT false,
	insert_date timestamp with time zone,
	update_date timestamp with time zone,
	user_insert character varying(128),
	user_update character varying(128)
);

COMMIT;

ALTER TABLE IF EXISTS sports.club_seasons
	ADD CONSTRAINT club_seasons_clubs_fk
	FOREIGN KEY (club_id)
	REFERENCES sports.clubs (id);

ALTER TABLE IF EXISTS football.club_seasons
	ADD CONSTRAINT club_seasons_seasons_fk
	FOREIGN KEY (season_id)
	REFERENCES sports.seasons (id);