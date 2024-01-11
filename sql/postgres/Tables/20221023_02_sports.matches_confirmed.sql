ALTER TABLE IF EXISTS sports.matches
    ADD COLUMN IF NOT EXISTS confirmed_home boolean NOT NULL DEFAULT False;

COMMENT ON COLUMN sports.matches.confirmed_home
    IS 'Checks if home capitain Confirmed the Match';
	
ALTER TABLE IF EXISTS sports.matches
    ADD COLUMN IF NOT EXISTS confirmed_visitors boolean NOT NULL DEFAULT False;

COMMENT ON COLUMN sports.matches.confirmed_visitors
    IS 'Check if visitors team confirmed the match';
	
update 	sports.matches set confirmed = true, confirmed_home = true,  confirmed_visitors = true; 