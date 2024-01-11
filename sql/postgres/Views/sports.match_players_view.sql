-- View: sports.match_players_view

DROP VIEW sports.match_players_view;

CREATE OR REPLACE VIEW sports.match_players_view
 AS
 SELECT m.id,
    m.match_id,
    m.player_id,
    m.minutes,
    m.vote,
    m.played,
    m.team_id,
    m.pos,
    m.subst_id,
    m.score,
    m.self_score,
    m.conceded,
    m.since,
    m.until,
    m.sent_off,
    m.injuries,
    m.db_schema_id,
    m.jguid,
    m.deleted,
    m.insert_date,
    m.update_date,
    m.user_insert,
    m.user_update,
    p.notes,
	p.first_name, 
	p.family_name,
    p.family_name::text || ' '::text || p.first_name::text || ' - '::text
	--  || COALESCE(to_char(p.birth_date::timestamp with time zone, 'dd/mm/yy'::character varying::text), COALESCE(p.notes, 'n.d.'::text))) || ' '::text) 
	--  || p.role_name::text 
	  AS full_name,
    (((p.family_name::text || ' '::text) || p.first_name::text) || ' - '::text) || p.team_name::text AS lkpplayername
   FROM sports.team_players_view p
     JOIN sports.match_players m ON p.player_id = m.player_id AND p.team_id = m.team_id
  ORDER BY m.pos;

ALTER TABLE sports.match_players_view
    OWNER TO ergo;


CREATE TRIGGER match_players_view_iud_trg
    INSTEAD OF INSERT OR DELETE OR UPDATE 
    ON sports.match_players_view
    FOR EACH ROW
    EXECUTE PROCEDURE sports.match_players_view_trg();

