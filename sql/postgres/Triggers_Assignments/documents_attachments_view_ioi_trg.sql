CREATE TRIGGER attachments_view_ioi_trg
    INSTEAD OF INSERT
    ON documents.attachments_view
    FOR EACH ROW
    EXECUTE PROCEDURE documents.attachments_view_insert_trg();
	
CREATE TRIGGER attachments_view_iou_trg
    INSTEAD OF UPDATE 
    ON documents.attachments_view
    FOR EACH ROW
    EXECUTE PROCEDURE documents.attachments_view_update_trg();
	
