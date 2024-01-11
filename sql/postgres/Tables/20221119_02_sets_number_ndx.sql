CREATE UNIQUE INDEX sets_number_ndx_uk
    ON sports.sets USING btree
    (match_id ASC NULLS LAST, "number" ASC NULLS LAST)
;
