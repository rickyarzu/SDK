-- View: sports.matchday_scores_view

-- DROP VIEW sports.matchday_scores_view;

CREATE OR REPLACE VIEW sports.matchday_scores_view
 AS
 SELECT 1::smallint AS home,
    matches.league_id,
    matches.season_id,
    matches.match_day_number,
    matches.home_team_id AS team_id,
    matches.score_home AS score,
    matches.points_home AS points,
    matches.score_visitor AS conceded,
        CASE
            WHEN matches.score_home > matches.score_visitor THEN 1
            ELSE 0
        END AS match_won,
        CASE
            WHEN matches.score_home < matches.score_visitor THEN 1
            ELSE 0
        END AS match_lost,
        CASE
            WHEN matches.score_home = matches.score_visitor THEN 1
            ELSE 0
        END AS match_equal,
	game_home as games_scored,
	game_visitors as games_conceded
FROM sports.matches
     JOIN ( SELECT sets.match_id,
            sum(sets.score_home) AS game_home, sum(sets.score_visitors) AS game_visitors 
           FROM sports.sets
          GROUP BY sets.match_id) games ON matches.id = games.match_id
  WHERE matches.db_schema_id = current_setting('system.db_schema_id'::text)::integer
UNION ALL
 SELECT 0::smallint AS home,
    matches.league_id,
    matches.season_id,
    matches.match_day_number,
    matches.visitors_team_id AS team_id,
    matches.score_visitor AS score,
    matches.points_visitors AS points,
    matches.score_home AS conceded,
        CASE
            WHEN matches.score_home < matches.score_visitor THEN 1
            ELSE 0
        END AS match_won,
        CASE
            WHEN matches.score_home > matches.score_visitor THEN 1
            ELSE 0
        END AS match_lost,
        CASE
            WHEN matches.score_home = matches.score_visitor THEN 1
            ELSE 0
        END AS match_equal,
	game_visitors as games_scored,
	game_home  as games_conceded
   FROM sports.matches
     JOIN ( SELECT sets.match_id,
            sum(sets.score_home) AS game_home, sum(sets.score_visitors) AS game_visitors 
           FROM sports.sets
          GROUP BY sets.match_id) games ON matches.id = games.match_id
  WHERE matches.db_schema_id = current_setting('system.db_schema_id'::text)::integer;

ALTER TABLE sports.matchday_scores_view
    OWNER TO ergo;

