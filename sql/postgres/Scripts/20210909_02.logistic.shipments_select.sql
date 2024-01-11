-- FUNCTION: logistic.shipments_select()

DROP FUNCTION IF EXISTS logistic.shipments_select();

CREATE OR REPLACE FUNCTION logistic.shipments_select(
	)
    RETURNS refcursor
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
DECLARE result_cursor REFCURSOR;
BEGIN
  OPEN result_cursor FOR SELECT 
    id,
    jguid,
    creation_date,
    pickup_date,
    delivery_date,
    office_id,
    workflow_uid,
    agent_id,
    shipper_id,
    shipper_address,
    pickup_address,
    year,
    groupage_number,
    export_type_id,
    fullcontainer,
    vessel_id,
    work_code,
    travel_identification_code,
    carrier_id,
    carrier_code,
    workflow_id,
    pol_id,
    pol_code,
    pol_name,
    pod_id,
    pod_name,
    pod_code,
    customer_id,
    notes,
    warehouse_id,
    work_date,
    order_state,
    airport_id,
    airport_code,
    awb_number,
    internal_notes,
    internal_notes2,
    warehouse_notes,
    route_type,
    internet_visible,
    flag_air,
    flag_ground,
    departure_date,
    arrival_date,
    po_state,
    po_level,
    final_date,
    flg_house,
    flg_master,
    delivered,
    flg_billable,
    customs_declearer,
    customs_date,
    update_date,
    insert_date,
    deleted,
    db_schema_id,
    carrier_name, 
	work_number
  FROM 
    logistic.shipments;
  RETURN result_cursor;
END;
$BODY$;

ALTER FUNCTION logistic.shipments_select()
    OWNER TO ergo;
