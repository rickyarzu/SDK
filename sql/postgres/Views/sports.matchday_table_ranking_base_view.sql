-- View: sports.matchday_table_ranking_base_view

-- DROP VIEW sports.matchday_table_ranking_base_view;

CREATE OR REPLACE VIEW sports.matchday_table_ranking_base_view
 AS
 SELECT c.season_id,
    c.league_id,
    c.match_day,
    c.team_id,
    t.team_name,
    count(1) AS played,
    sum(v.points) AS points,
    sum(v.score) AS score,
    sum(v.conceded) AS conceded,
    sum(v.score - v.conceded) AS delta,
    sum(v.match_won) AS match_won,
    sum(v.match_lost) AS match_lost,
    sum(v.match_equal) AS match_equal,
    sum(v.games_scored) AS games_scored,
    sum(v.games_conceded) AS games_conceded,
	(sum(v.games_scored - v.games_conceded)) as games_delta
   FROM sports.calendar_teams c
     JOIN sports.teams t ON t.id = c.team_id
     JOIN sports.matchday_scores_view v ON v.season_id = c.season_id AND v.league_id = c.league_id AND v.match_day_number <= c.match_day AND v.team_id = c.team_id
  GROUP BY c.season_id, c.league_id, c.match_day, c.team_id, t.team_name
  ORDER BY c.match_day, (sum(v.points)) DESC, (sum(v.games_scored - v.games_conceded)) DESC, t.team_name;

ALTER TABLE sports.matchday_table_ranking_base_view
    OWNER TO ergo;

