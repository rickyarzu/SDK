-- View: carservice.booking_head_view

DROP VIEW carservice.booking_head_view;

CREATE OR REPLACE VIEW carservice.booking_head_view
 AS
 SELECT bh.id,
    bh.office_id,
    bh.jguid,
    bh.db_schema_id,
    bh.user_insert,
    bh.insert_date,
    bh.customer_id,
    bh.state_id,
    bh.branch_id,
	bh.vehicle_model, 
	bh.vehicle_color, 
	bh.vehicle_numberplate, 
    se.an_last_name,
    se.an_vat_id,
    se.an_address,
    se.an_postal_code,
    se.an_fiscal_code,
    se.an_town,
    se.an_phone,
    br.an_address AS branch_address,
    br.an_postal_code AS branch_postal_code,
    br.an_town AS branch_town,
    br.an_phone AS branch_phone,
    cu.an_name AS cust_first_name,
    cu.an_last_name AS cust_last_name,
    cu.an_address AS full_address,
    cu.an_cellular AS cust_cellular,
    cu.an_email AS cust_email
   FROM carservice.booking_heads bh
     JOIN anagraph.anagraphs se ON bh.office_id = se.anagraph_id
     JOIN anagraph.anagraphs br ON bh.branch_id = br.anagraph_id
     JOIN anagraph.anagraphs cu ON bh.customer_id = cu.anagraph_id;

ALTER TABLE carservice.booking_head_view
    OWNER TO ergo;


CREATE TRIGGER booking_heads_view_ioi_trg
    INSTEAD OF INSERT
    ON carservice.booking_head_view
    FOR EACH ROW
    EXECUTE PROCEDURE carservice.booking_heads_view_insert_trg();


CREATE TRIGGER booking_heads_view_iou_trg
    INSTEAD OF UPDATE 
    ON carservice.booking_head_view
    FOR EACH ROW
    EXECUTE PROCEDURE carservice.booking_heads_view_update_trg();

