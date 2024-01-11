-- View: carservice.booking_head_view

-- DROP VIEW carservice.booking_head_view;

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
    bh.pickup_day,
    bh.pickup_slot_id,
    bh.return_day,
    bh.return_slot_id,
    se.an_last_name,
    se.an_vat_id,
    se.an_address,
    se.an_postal_code,
    se.an_fiscal_code,
    se.an_town,
    se.an_last_name AS service_name,
    COALESCE(se.an_full_address::text, ((((se.an_address::text || ', '::text) || se.an_postal_code::text) || ', '::text) || se.an_town::text) ||
        CASE
            WHEN se.an_state_province IS NULL THEN ''::text
            ELSE (' ('::text || se.an_state_province::text) || ')'::text
        END) AS service_address,
    se.an_phone,
    se.an_email,
    se.an_cellular,
    br.an_address AS branch_address,
    br.an_postal_code AS branch_postal_code,
    br.an_town AS branch_town,
    br.an_phone AS branch_phone,
    cu.an_name AS cust_first_name,
    cu.an_last_name AS cust_last_name,
    cu.an_address AS full_address,
    cu.an_cellular AS cust_cellular,
    cu.an_email AS cust_email,
    tp.from_full_address::text AS pickup_address,
    tp.to_full_address::text AS return_address,
    tp.slot_des AS pickup_time,
    tr.slot_des AS return_time,
    tp.workingday AS pickup_date,
    tr.workingday AS return_date,
    tp.driver_anagraph_id AS driver1_id,
    tr.driver_anagraph_id AS driver2_id,
    dp.an_email AS driver1_email,
    dr.an_email AS driver2_email,
    dp.an_cellular AS driver1_cellular,
    dr.an_cellular AS driver2_cellular,
    tp.jguid AS pickup_jguid,
    tr.jguid AS return_jguid,
    tr.from_full_address::text AS pickup2_address,
    tr.to_full_address::text AS return2_address
   FROM carservice.booking_heads bh
     JOIN anagraph.anagraphs se ON bh.office_id = se.anagraph_id
     JOIN anagraph.anagraphs br ON bh.branch_id = br.anagraph_id
     JOIN anagraph.anagraphs cu ON bh.customer_id = cu.anagraph_id
     JOIN carservice.timetable_view tp ON bh.pickup_day = tp.workingday AND bh.pickup_slot_id = tp.slot_id AND bh.id = tp.booking_id
     JOIN anagraph.anagraphs dp ON tp.driver_anagraph_id = dp.anagraph_id
     LEFT JOIN carservice.timetable_view tr ON bh.return_day = tr.workingday AND bh.return_slot_id = tr.slot_id AND bh.id = tr.booking_id
     LEFT JOIN anagraph.anagraphs dr ON tr.driver_anagraph_id = dr.anagraph_id;

ALTER TABLE carservice.booking_head_view
    OWNER TO ergo;
COMMENT ON VIEW carservice.booking_head_view
    IS 'This view contains All booking informations about Customer, Service and Service Office along with Drivers and Pickup-Delivery-Return Routes info';

/*
CREATE TRIGGER booking_heads_view_ioi_trg
    INSTEAD OF INSERT
    ON carservice.booking_head_view
    FOR EACH ROW
    EXECUTE  carservice.booking_heads_view_insert_trg();


CREATE TRIGGER booking_heads_view_iou_trg
    INSTEAD OF UPDATE 
    ON carservice.booking_head_view
    FOR EACH ROW
    EXECUTE  carservice.booking_heads_view_update_trg();
*/

