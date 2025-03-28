SET SESSION "system.db_schema_id" = 39; 

SELECT id, league_id, season_id, match_day_number, match_time, match_date, home_team_id, visitors_team_id, score_home, score_visitor, points_home, points_visitors, notes, confirmed, home_notes, visitors_notes, suspended, postponed, forfeit, remote_id, field_id, article_url, video_url, db_schema_id, jguid, deleted, insert_date, update_date, user_insert, user_update, home_team_name, visitors_team_name, games_sets
	FROM sports.matches_view where visitors_team_name like '%BATTILEI%'
	ORDER BY MATCH_DAY_NUMBER DESC; 
	
SELECT * FROM sports.matches WHERE ID = 478
	SELECT  sports.generate_day_ranking(4::smallint, 11::smallint, 3::smallint);
	

select * from sports.matches_view where visitors_team_id = 0 

select * from sports.teams WHERE team_name like '%FISSOLO%'

UPDATE sports.matches SET visitors_team_id = 32 WHERE ID = 654 AND visitors_team_id = 0 

select * from sports.matches_view where home_team_id = 0 

UPDATE sports.matches SET home_team_id = 17 WHERE ID = 549 AND home_team_id = 0 