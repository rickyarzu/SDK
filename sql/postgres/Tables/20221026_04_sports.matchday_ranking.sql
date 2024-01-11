-- Table: sports.matchday_ranking

DROP TABLE IF EXISTS sports.matchday_ranking;

CREATE TABLE IF NOT EXISTS sports.matchday_ranking
(
    season_id integer NOT NULL,
    league_id integer NOT NULL,
    matchday smallint NOT NULL,
    team_id integer NOT NULL,
    --- matches
    won_matches smallint,
    lost_matches smallint,
    tied_matches smallint,
    home_matches smallint,
    home_won smallint,
    home_lost smallint,
    home_tied smallint,
    outside_played smallint,
    outside_won smallint,
    outside_lost smallint,
    outside_tied smallint,
	-- score
    points smallint NOT NULL DEFAULT 0,
    scored smallint NOT NULL DEFAULT 0,
    conceded smallint NOT NULL DEFAULT 0,
	-- aggregates -- for group ranking ---
    aggregate_points smallint NOT NULL DEFAULT 0,
    CONSTRAINT matchday_ranking_pkey PRIMARY KEY (season_id, league_id, matchday, team_id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS sports.matchday_ranking
    OWNER to ergo;