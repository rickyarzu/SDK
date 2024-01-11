-- View: sports.matches_view

DROP VIEW sports.matches_view;

CREATE OR REPLACE VIEW sports.matches_view
 AS
 SELECT m.id,
    m.league_id,
    m.season_id,
    m.match_day_number,
    m.match_time,
    m.match_date,
    m.home_team_id,
    m.visitors_team_id,
    m.score_home,
    m.score_visitor,
    m.points_home,
    m.points_visitors,
    m.notes,
    m.confirmed,
    m.home_notes,
    m.visitors_notes,
    m.suspended,
    m.postponed,
    m.forfeit,
    m.remote_id,
    m.field_id,
    m.article_url,
    m.video_url,
    m.db_schema_id,
    m.jguid,
    m.deleted,
    m.insert_date,
    m.update_date,
    m.user_insert,
    m.user_update,
    h.team_name AS home_team_name,
    v.team_name AS visitors_team_name, 
	sports.get_match_games_sets(m.id) as games_sets
   FROM sports.matches m
     JOIN sports.teams v ON m.visitors_team_id = v.id
     JOIN sports.teams h ON m.home_team_id = h.id
  WHERE m.db_schema_id = system.get_schema_id();

ALTER TABLE sports.matches_view
    OWNER TO ergo;


CREATE TRIGGER matches_view_iud_trg
    INSTEAD OF INSERT OR DELETE OR UPDATE 
    ON sports.matches_view
    FOR EACH ROW
    EXECUTE PROCEDURE sports.matches_view_trg();

