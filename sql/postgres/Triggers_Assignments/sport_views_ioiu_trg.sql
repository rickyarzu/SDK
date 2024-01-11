CREATE TRIGGER calendar_view_iud_trg
    INSTEAD OF INSERT OR DELETE OR UPDATE 
    ON sports.calendar_view
    FOR EACH ROW
    EXECUTE PROCEDURE sports.calendar_view_trg();
	
CREATE TRIGGER championships_view_iud_trg
    INSTEAD OF INSERT OR DELETE OR UPDATE 
    ON sports.championships_view
    FOR EACH ROW
    EXECUTE PROCEDURE sports.championships_view_trg();
	
CREATE TRIGGER clubs_view_iud_trg
    INSTEAD OF INSERT OR DELETE OR UPDATE 
    ON sports.clubs_view
    FOR EACH ROW
    EXECUTE PROCEDURE sports.clubs_view_trg();
	
CREATE TRIGGER fields_view_iud_trg
    INSTEAD OF INSERT OR DELETE OR UPDATE 
    ON sports.fields_view
    FOR EACH ROW
    EXECUTE PROCEDURE sports.fields_view_trg();
	
CREATE TRIGGER leagues_view_iud_trg
    INSTEAD OF INSERT OR DELETE OR UPDATE 
    ON sports.leagues_view
    FOR EACH ROW
    EXECUTE PROCEDURE sports.leagues_view_trg();	
	
CREATE TRIGGER matches_view_iud_trg
    INSTEAD OF INSERT OR DELETE OR UPDATE 
    ON sports.matches_view
    FOR EACH ROW
    EXECUTE PROCEDURE sports.matches_view_trg();
	
CREATE TRIGGER seasons_view_iud_trg
    INSTEAD OF INSERT OR DELETE OR UPDATE 
    ON sports.seasons_view
    FOR EACH ROW
    EXECUTE PROCEDURE sports.seasons_view_trg();
	
CREATE TRIGGER sets_view_iud_trg
    INSTEAD OF INSERT OR DELETE OR UPDATE 
    ON sports.sets_view
    FOR EACH ROW
    EXECUTE PROCEDURE sports.sets_view_trg();
	
CREATE TRIGGER teams_view_iud_trg
    INSTEAD OF INSERT OR DELETE OR UPDATE 
    ON sports.teams_view
    FOR EACH ROW
    EXECUTE PROCEDURE sports.teams_view();	
	
	
	
	