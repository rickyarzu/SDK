ALTER TABLE IF EXISTS sports.matchday_ranking
    ADD COLUMN IF NOT EXISTS rownum smallint NOT NULL DEFAULT 0;
ALTER TABLE IF EXISTS sports.matchday_ranking
    ADD COLUMN IF NOT EXISTS db_schema_id integer NOT NULL DEFAULT system.get_schema_id();