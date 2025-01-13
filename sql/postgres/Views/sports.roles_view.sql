-- View: sports.teams_view

-- DROP VIEW sports.teams_view;

CREATE OR REPLACE VIEW sports.roles_view
 AS
 SELECT t.*
   FROM sports.roles t
  WHERE t.db_schema_id = system.get_schema_id();

ALTER TABLE sports.teams_view
    OWNER TO ergo;


CREATE TRIGGER teams_view_iud_trg
    INSTEAD OF INSERT OR DELETE OR UPDATE 
    ON sports.teams_view
    FOR EACH ROW
    EXECUTE PROCEDURE sports.teams_view_trg();

