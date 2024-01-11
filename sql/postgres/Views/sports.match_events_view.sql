-- Sample view
CREATE OR REPLACE VIEW sports.match_events_view AS
	SELECT
	e.*,  t.family_name || ' ' || t.team_name as teamplayer, t.family_name , t.team_name
	from 
		sports.match_events e join sports.team_players_view t
			on t.team_id = e.team_id and t.player_id = e.player_id