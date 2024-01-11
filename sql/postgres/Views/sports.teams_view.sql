-- View: sports.teams_view

DROP VIEW sports.teams_view;

CREATE OR REPLACE VIEW sports.teams_view
 AS
  select t.* , c.club_name, c.club_image
	from sports.teams t JOIN sports.clubs c on   c.id = t.club_id
  WHERE t.db_schema_id = system.get_schema_id();

ALTER TABLE sports.teams_view
    OWNER TO ergo;


CREATE TRIGGER teams_view_iud_trg
    INSTEAD OF INSERT OR DELETE OR UPDATE 
    ON sports.teams_view
    FOR EACH ROW
    EXECUTE PROCEDURE sports.teams_view_trg();

