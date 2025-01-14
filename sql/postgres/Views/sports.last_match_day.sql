SET SESSION "system.db_schema_id" = 39; 

CREATE or replace view sports.ranking_view as 
SELECT v.season_id, v.league_id, v.matchday, pos, team_id, won_matches, lost_matches, tied_matches, home_matches, home_won, home_lost, home_tied, outside_played, outside_won, outside_lost, outside_tied, points, points_home, points_outside, scored, scored_home, scored_outside, conceded, conceded_home, conceded_outside, aggregate_points, aggregate_group, rownum, db_schema_id, delta, games_scored, games_conceded, delta_games, team_name, club_name, played
	FROM sports.matchday_ranking_view V JOIN sports.last_match_day L 
	   ON V.season_id = l.season_id and v.league_id = l.league_id and v.matchday = l.max_match_day


select t.* 
from sports.teams_view t 
where
not exists (
select 1 from sports.teams_championships c 
where c.season_id = :season_id and c.team_id = t.team_id
)
order by team_name

sports.generate_day_ranking(p_day, p_league_id, p_season_id)