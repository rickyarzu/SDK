create or replace view sports.matchday_table_rankings_view as
SELECT 
  C.season_id,
  C.league_id,
  C.match_day, 
  C.team_id, 
  T.team_name,
  c.points,
  c.score, 
  c.conceded, 
  c.score-c.conceded  as delta,
  c.aggreagate_points 
FROM sports.matchday_ranking c JOIN sports.teams_view t ON t.id = c.team_id 
order by match_day, points desc,  aggregate_points desc, delta desc, team_name