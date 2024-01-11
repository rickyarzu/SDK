-- View: shipping.vessels_view

DROP VIEW shipping.vessels_view;

CREATE OR REPLACE VIEW shipping.vessels_view
 AS
 SELECT v.vessel_id,
    v.name,
    v.code,
    v.net_tonnage,
    v.gross_tonnage,
    v.deadweight,
    v.insert_date,
    v.update_date,
    v.ins_id,
    v.upd_id,
    v.user_insert_id,
    v.user_update_id,
    v.local,
    v.passenger_limit,
    v.db_schema_id,
    v.jguid,
    v.deleted,
    v.notes,
    v.custom_char_1,
    v.custom_char_2,
    v.custom_char_3,
    v.custom_int_1,
    v.custom_int_2,
    v.custom_int_3,
    v.anagraph_id,
    a.an_last_name AS shipowner_name
   FROM (shipping.vessels v
     LEFT JOIN anagraph.anagraphs a ON ((v.anagraph_id = a.anagraph_id)));

ALTER TABLE IF EXISTS shipping.vessels_view
    OWNER TO enterprisedb;
	

CREATE TRIGGER vessel_view_ioi_trg
    INSTEAD OF INSERT
    ON shipping.vessels_view
    FOR EACH ROW
    EXECUTE FUNCTION shipping.vessel_view_insert_trg();


CREATE TRIGGER vessel_view_iou_trg
    INSTEAD OF UPDATE 
    ON shipping.vessels_view
    FOR EACH ROW
    EXECUTE FUNCTION shipping.vessel_view_update_trg();

