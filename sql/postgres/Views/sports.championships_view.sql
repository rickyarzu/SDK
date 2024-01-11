-- View: sports.championships_view

SET SESSION "system.db_schema_id" = 0;

DROP VIEW IF EXISTS sports.championships_view;

CREATE OR REPLACE VIEW sports.championships_view 
AS
SELECT C.*, l.league_name,  l.league_position, l.league_code
  FROM 
  sports.leagues l  INNER JOIN sports.championships C 
  ON l.id = C.league_id
  WHERE C.db_schema_id =  current_setting('system.db_schema_id')::integer
  ORDER BY 
  	l.league_position; 
	

CREATE TRIGGER championships_view_iud_trg
    INSTEAD OF INSERT OR DELETE OR UPDATE 
    ON sports.championships_view
    FOR EACH ROW
    EXECUTE PROCEDURE sports.championships_view_trg();

