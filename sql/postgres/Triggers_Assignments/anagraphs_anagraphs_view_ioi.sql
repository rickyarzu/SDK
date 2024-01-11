CREATE TRIGGER anagraph_view_ioi_trg
    INSTEAD OF INSERT
    ON anagraph.anagraphs_view
    FOR EACH ROW
    EXECUTE PROCEDURE anagraph.anagraph_view_insert_trg();


CREATE TRIGGER anagraphs_view_iou_trg
    INSTEAD OF UPDATE 
    ON anagraph.anagraphs_view
    FOR EACH ROW
    EXECUTE PROCEDURE anagraph.anagraph_view_update_trg();