ALTER TABLE IF EXISTS sports.matches
    ALTER COLUMN home_team_id SET NOT NULL;
	
ALTER TABLE IF EXISTS sports.matches
    ALTER COLUMN visitors_team_id SET NOT NULL;