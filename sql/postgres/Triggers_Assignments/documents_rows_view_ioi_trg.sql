DROP TRIGGER IF EXISTS doc_rows_view_ioi_trg ON documents.rows_view;

CREATE TRIGGER doc_rows_view_ioi_trg
    INSTEAD OF INSERT
    ON documents.rows_view
    FOR EACH ROW
    EXECUTE PROCEDURE documents.rows_view_insert_trg();
	
DROP TRIGGER IF EXISTS doc_rows_view_iou_trg ON documents.rows_view;

CREATE TRIGGER doc_rows_view_iou_trg
    INSTEAD OF UPDATE
    ON documents.rows_view
    FOR EACH ROW
    EXECUTE PROCEDURE documents.rows_view_update_trg();
	