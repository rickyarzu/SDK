-- View: sports.team_players_view

DROP VIEW IF EXISTS sports.team_players_view;

CREATE OR REPLACE VIEW sports.team_players_view
 AS
 SELECT t.id,
    t.team_id,
    t.player_id,
    t.season_id,
    t.since,
    t.until,
    t.club_origin_id,
    t.scored,
    t.self_scored,
    t.conceded,
    t.sent_off,
    t.injuries,
    t.minutes,
    t.matches,
    t.score,
    t.votes,
    t.remote_id,
    t.db_schema_id,
    t.jguid,
    t.deleted,
    t.insert_date,
    t.update_date,
    t.user_insert,
    t.user_update,
    p.anagraph_id,
    p.first_name,
    p.family_name,
    p.birth_date,
    p.an_cellular,
    p.an_email,
    p.role_name,
    p.role_code,
    p.birth_year,
    p.birth_place,
    p.notes,
    p.height,
    p.weight,
    p.role_id,
    s.team_name,
    s.club_id
   FROM sports.team_players t
     JOIN sports.players_view p ON p.id = t.player_id
     JOIN sports.teams s on t.team_id = s.id
  WHERE p.db_schema_id = system.get_schema_id();

ALTER TABLE sports.team_players_view
    OWNER TO ergo;
	
DROP TRIGGER IF EXISTS team_players_view_iud_trg ON sports.team_players_view; 	
	
CREATE TRIGGER team_players_view_iud_trg
    INSTEAD OF INSERT OR DELETE OR UPDATE 
    ON sports.team_players_view
    FOR EACH ROW
    EXECUTE PROCEDURE sports.team_players_view_trg();