-- View: sports.matchday_ranking_view

-- DROP VIEW sports.matchday_ranking_view;

CREATE OR REPLACE VIEW sports.matchday_ranking_view
 AS
 SELECT r.season_id,
    r.league_id,
    r.matchday,
    r.pos,
    r.team_id,
    r.won_matches,
    r.lost_matches,
    r.tied_matches,
    r.home_matches,
    r.home_won,
    r.home_lost,
    r.home_tied,
    r.outside_played,
    r.outside_won,
    r.outside_lost,
    r.outside_tied,
    r.points,
    r.points_home,
    r.points_outside,
    r.scored,
    r.scored_home,
    r.scored_outside,
    r.conceded,
    r.conceded_home,
    r.conceded_outside,
    r.aggregate_points,
    r.aggregate_group,
    r.rownum,
    r.db_schema_id,
    r.scored - r.conceded AS delta,
    r.games_scored,
    r.games_conceded,
    r.games_scored - r.games_conceded AS delta_games,
    t.team_name,
    t.club_name, 
	r.played
   FROM sports.matchday_ranking r
     JOIN sports.teams_view t ON r.team_id = t.id
  WHERE r.db_schema_id = system.get_schema_id()
  ORDER BY r.rownum;

ALTER TABLE sports.matchday_ranking_view
    OWNER TO ergo;

