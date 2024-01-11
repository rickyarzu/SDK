-- View: sports.sets_view

-- DROP VIEW sports.sets_view;

CREATE OR REPLACE VIEW sports.sets_view
 AS
 SELECT sets.id,
    sets.match_id,
    sets.score_home,
    sets.score_visitors,
    sets.remote_id,
    sets.db_schema_id,
    sets.jguid,
    sets.deleted,
    sets.insert_date,
    sets.update_date,
    sets.user_insert,
    sets.user_update, 
	sets.number
   FROM sports.sets
  WHERE sets.db_schema_id = system.get_schema_id();

ALTER TABLE sports.sets_view
    OWNER TO ergo;


CREATE TRIGGER sets_view_iud_trg
    INSTEAD OF INSERT OR DELETE OR UPDATE 
    ON sports.sets_view
    FOR EACH ROW
    EXECUTE PROCEDURE sports.sets_view_trg();

