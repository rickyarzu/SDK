-- FUNCTION: shipping.vessel_view_insert_trg()

-- DROP FUNCTION IF EXISTS shipping.vessel_view_insert_trg();

CREATE OR REPLACE FUNCTION shipping.vessel_view_insert_trg()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
BEGIN
  if new.vessel_id is null or new.vessel_id = 0 then 
     new.vessel_id := nextval('shipping.vessels_seq') ; 
  end if;   
  
INSERT INTO shipping.vessels (
    name,
    code,
    net_tonnage,
    gross_tonnage,
    deadweight,
    insert_date,
    update_date,
    ins_id,
    upd_id,
    user_insert_id,
    user_update_id,
    local,
    passenger_limit,
    db_schema_id,
    jguid,
    deleted,
    notes,
    custom_char_1,
    custom_char_2,
    custom_char_3,
    custom_int_1,
    custom_int_2,
    custom_int_3,
    anagraph_id
  )
  VALUES (
    new.name,
    new.code,
    new.net_tonnage,
    new.gross_tonnage,
    new.deadweight,
    new.insert_date,
    new.update_date,
    new.ins_id,
    new.upd_id,
    new.user_insert_id,
    new.user_update_id,
    new.local,
    new.passenger_limit,
    new.db_schema_id,
    new.jguid,
    new.deleted,
    new.notes,
    new.custom_char_1,
    new.custom_char_2,
    new.custom_char_3,
    new.custom_int_1,
    new.custom_int_2,
    new.custom_int_3,
    new.anagraph_id
  );
    return new; 
END;
$BODY$;

ALTER FUNCTION shipping.vessel_view_insert_trg()
    OWNER TO enterprisedb;

