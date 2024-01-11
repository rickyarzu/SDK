ALTER TABLE IF EXISTS sports.sets
    ADD COLUMN "number" smallint;

COMMENT ON COLUMN sports.sets."number"
    IS 'The set''s number in list';