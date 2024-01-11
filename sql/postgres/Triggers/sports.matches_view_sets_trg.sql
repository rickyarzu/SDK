-- FUNCTION: sports.matches_view_sets_trg()

-- DROP FUNCTION IF EXISTS sports.matches_view_sets_trg();

CREATE OR REPLACE FUNCTION sports.matches_view_sets_trg()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
DECLARE
  i integer; 
BEGIN
	FOR i IN 1..3 LOOP
		INSERT INTO sports.sets(
			match_id,number, score_home, score_visitors)
		VALUES ( New.id, i, 0, 0);	
	END LOOP; 
END; 
$BODY$;

ALTER FUNCTION sports.matches_view_sets_trg()
    OWNER TO ergo;

COMMENT ON FUNCTION sports.matches_view_sets_trg()
    IS 'This is called when match is modified, inserted or deleted to manage sets';
