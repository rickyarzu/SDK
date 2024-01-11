CREATE TABLE sports.calendar_teams
(
    season_id integer NOT NULL,
    league_id integer NOT NULL,
    match_day smallint NOT NULL,
    team_id integer NOT NULL,
    PRIMARY KEY (season_id, league_id, match_day, team_id)
)
WITH (
    OIDS = FALSE
);

ALTER TABLE IF EXISTS sports.calendar_teams
    OWNER to ergo;