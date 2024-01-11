ALTER TABLE IF EXISTS sports.matchday_ranking
    ADD COLUMN IF NOT EXISTS notes character varying(1024);