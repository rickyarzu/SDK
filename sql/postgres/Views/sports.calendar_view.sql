-- View: sports.calendar_view

-- DROP VIEW sports.calendar_view;

CREATE OR REPLACE VIEW sports.calendar_view
 AS
 SELECT calendar.season_id,
    calendar.league_id,
    calendar.match_day_number,
    calendar.match_day_date,
    calendar.match_day_played,
    calendar.rest_team_id,
    calendar.db_schema_id,
    calendar.jguid,
    calendar.deleted,
    calendar.insert_date,
    calendar.update_date,
    calendar.user_insert,
    calendar.user_update
   FROM sports.calendar
   WHERE db_schema_id = system.get_schema_id();

ALTER TABLE sports.calendar_view
    OWNER TO ergo;


CREATE TRIGGER calendar_view_iud_trg
    INSTEAD OF INSERT OR DELETE OR UPDATE 
    ON sports.calendar_view
    FOR EACH ROW
    EXECUTE PROCEDURE sports.calendar_view_trg();

