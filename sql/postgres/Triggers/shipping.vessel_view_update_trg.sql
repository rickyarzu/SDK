-- FUNCTION: shipping.vessel_view_update_trg()

-- DROP FUNCTION IF EXISTS shipping.vessel_view_update_trg();

CREATE OR REPLACE FUNCTION shipping.vessel_view_update_trg()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
BEGIN
  UPDATE shipping.vessels SET
    "name" = new.name,
    code = new.code,
    net_tonnage = new.net_tonnage,
    gross_tonnage = new.gross_tonnage,
    deadweight = new.deadweight,
    insert_date = new.insert_date,
    update_date = new.update_date,
    ins_id = new.ins_id,
    upd_id = new.upd_id,
    user_insert_id = new.user_insert_id,
    user_update_id = new.user_update_id,
    "local" = new."local",
    passenger_limit = new.passenger_limit,
    db_schema_id = new.db_schema_id,
    jguid = new.jguid,
    deleted = new.deleted,
    notes = new.notes,
    custom_char_1 = new.custom_char_1,
    custom_char_2 = new.custom_char_2,
    custom_char_3 = new.custom_char_3,
    custom_int_1 = new.custom_int_1,
    custom_int_2 = new.custom_int_2,
    custom_int_3 = new.custom_int_3,
    anagraph_id = new.anagraph_id
  WHERE 
    (jguid = old.jguid) ;
END;
$BODY$;

ALTER FUNCTION shipping.vessel_view_update_trg()
    OWNER TO enterprisedb;
	

