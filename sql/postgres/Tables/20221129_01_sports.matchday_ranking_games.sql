ALTER TABLE IF EXISTS sports.matchday_ranking
    ADD COLUMN IF NOT EXISTS games_won smallint;
	
ALTER TABLE IF EXISTS sports.matchday_ranking
    ADD COLUMN IF NOT EXISTS games_lost smallint;
	
	