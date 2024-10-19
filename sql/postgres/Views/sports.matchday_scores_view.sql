-- View: sports.matchday_scores_view

-- DROP VIEW sports.matchday_scores_view;

CREATE OR REPLACE VIEW sports.matchday_scores_view
 AS
 SELECT 1::smallint AS home,
    matches.league_id,
    matches.season_id,
    matches.match_day_number,
    matches.home_team_id AS team_id,
    matches.score_home::smallint  AS score,
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
    games.game_home AS games_scored,
    games.game_visitors AS games_conceded
   FROM sports.matches
     JOIN ( SELECT sets.match_id,
            sum(sets.score_home) AS game_home,
            sum(sets.score_visitors) AS game_visitors
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
    games.game_visitors AS games_scored,
    games.game_home AS games_conceded
   FROM sports.matches
     JOIN ( SELECT sets.match_id,
            sum(sets.score_home) AS game_home,
            sum(sets.score_visitors) AS game_visitors
           FROM sports.sets
          GROUP BY sets.match_id) games ON matches.id = games.match_id
  WHERE matches.db_schema_id = current_setting('system.db_schema_id'::text)::integer
  UNION ALL 
  SELECT 0::smallint AS home,
    matches.league_id,
    matches.season_id,
    matches.match_day_number,
    matches.visitors_team_id AS team_id,
    coalesce(matches.score_visitor,0)::smallint  AS score,
    coalesce(matches.points_visitors,0)::smallint  AS points,
    coalesce(matches.score_home,0)::smallint  AS conceded,
	0 AS match_won,
	0 AS match_lost, 
    0 AS match_equal,
    0 AS games_scored,
    0 AS games_conceded
   FROM sports.matches  where not exists (select 1 from sports.sets  where matches.id = sets.match_id)
  AND matches.db_schema_id = current_setting('system.db_schema_id'::text)::integer
 UNION ALL
  SELECT 1::smallint AS home,
    matches.league_id,
    matches.season_id,
    matches.match_day_number,
    matches.home_team_id AS team_id,
    coalesce(matches.score_visitor,0)::smallint  AS score,
    coalesce(matches.points_visitors,0)::smallint  AS points,
    coalesce(matches.score_home,0)::smallint  AS conceded,
	0 AS match_won,
	0 AS match_lost, 
    0 AS match_equal,
    0 AS games_scored,
    0 AS games_conceded
   FROM sports.matches  where not exists (select 1 from sports.sets  where matches.id = sets.match_id)
  AND matches.db_schema_id = current_setting('system.db_schema_id'::text)::integer
  ;

ALTER TABLE sports.matchday_scores_view
    OWNER TO ergo;

