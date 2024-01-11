-- View: sports.teams_championships_view

DROP VIEW sports.teams_championships_view;

CREATE OR REPLACE VIEW sports.teams_championships_view
 AS
 SELECT  t.team_name, c.*
  FROM 
  sports.teams_championships c LEFT JOIN sports.teams t ON c.team_id = t.id
  WHERE 
  	c.db_schema_id  = system.get_schema_id()
  order by t.team_name asc;

ALTER TABLE sports.teams_championships_view
    OWNER TO ergo;
	
CREATE TRIGGER teams_championships_view_ioiu_trg
    INSTEAD OF INSERT OR DELETE OR UPDATE 
    ON sports.teams_championships_view
    FOR EACH ROW
    EXECUTE PROCEDURE teams_championships_view_trg();

