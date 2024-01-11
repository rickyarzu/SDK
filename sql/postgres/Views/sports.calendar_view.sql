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
    WHERE calendar.db_schema_id =  current_setting('system.db_username')::character varying; 

ALTER TABLE sports.calendar_view
    OWNER TO ergo;

