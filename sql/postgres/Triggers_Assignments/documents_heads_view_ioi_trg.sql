CREATE TRIGGER heads_view_ioi_trg
    INSTEAD OF INSERT
    ON documents.heads_view
    FOR EACH ROW
    EXECUTE PROCEDURE documents.heads_view_insert_trg();