-- View: sports.players_view

-- DROP VIEW sports.players_view;

CREATE OR REPLACE VIEW sports.players_view
 AS
 SELECT p.id,
    p.anagraph_id,
    p.birth_year,
    p.birth_place,
    p.notes,
    p.role_id,
    p.height,
    p.weight,
    p.remote_id,
    p.db_schema_id,
    p.jguid,
    p.deleted,
    p.insert_date,
    p.update_date,
    p.user_insert,
    p.user_update,
    a.an_name AS first_name,
    a.an_last_name AS family_name,
    a.an_birthdate AS birth_date,
    a.an_cellular,
    a.an_email,
    a.an_group_id,
    r.role_name,
    r.role_code
   FROM sports.players p
     JOIN anagraph.anagraphs_view a ON p.anagraph_id = a.anagraph_id
     JOIN sports.roles r ON COALESCE(p.role_id::integer, 0) = r.id
   WHERE p.db_schema_id = system.get_schema_id();

ALTER TABLE sports.players_view
    OWNER TO ergo;
	
DROP TRIGGER IF EXISTS players_view_iud_trg ON sports.players_view; 
	
CREATE TRIGGER players_view_iud_trg
    INSTEAD OF INSERT OR DELETE OR UPDATE 
    ON sports.players_view
    FOR EACH ROW
    EXECUTE PROCEDURE sports.players_view_trg();




