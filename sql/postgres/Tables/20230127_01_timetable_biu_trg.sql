CREATE TRIGGER timetable_bi_trg
    BEFORE INSERT
    ON carservice.timetable
    FOR EACH ROW
    EXECUTE PROCEDURE carservice.timetable_insert_trg();
	
CREATE TRIGGER timetable_bu_trg
    BEFORE UPDATE 
    ON carservice.timetable
    FOR EACH ROW
    EXECUTE PROCEDURE carservice.timetable_update_trg();
	
	