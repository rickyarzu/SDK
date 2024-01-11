ALTER TABLE IF EXISTS sports.sets
    ADD CONSTRAINT sets_number_uk UNIQUE USING INDEX sets_number_ndx_uk;
;
