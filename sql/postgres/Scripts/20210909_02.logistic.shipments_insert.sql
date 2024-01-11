-- FUNCTION: logistic.shipments_insert(bigint, uuid, timestamp with time zone, timestamp without time zone, timestamp without time zone, integer, uuid, integer, integer, json, json, smallint, smallint, smallint, character, integer, character varying, character varying, integer, character varying, bigint, integer, character varying, character varying, integer, character varying, character varying, integer, text, integer, timestamp without time zone, smallint, integer, character varying, character varying, text, text, text, character, boolean, boolean, boolean, timestamp without time zone, timestamp without time zone, smallint, smallint, timestamp without time zone, boolean, boolean, boolean, boolean, character varying, timestamp without time zone, timestamp with time zone, timestamp with time zone, boolean, integer, character varying)

DROP FUNCTION if exists logistic.shipments_insert(bigint, uuid, timestamp with time zone, timestamp without time zone, timestamp without time zone, integer, uuid, integer, integer, json, json, smallint, smallint, smallint, character, integer, character varying, character varying, integer, character varying, bigint, integer, character varying, character varying, integer, character varying, character varying, integer, text, integer, timestamp without time zone, smallint, integer, character varying, character varying, text, text, text, character, boolean, boolean, boolean, timestamp without time zone, timestamp without time zone, smallint, smallint, timestamp without time zone, boolean, boolean, boolean, boolean, character varying, timestamp without time zone, timestamp with time zone, timestamp with time zone, boolean, integer, character varying);

CREATE OR REPLACE FUNCTION logistic.shipments_insert(
	p_id bigint,
	p_jguid uuid,
	p_creation_date timestamp with time zone,
	p_pickup_date timestamp without time zone,
	p_delivery_date timestamp without time zone,
	p_office_id integer,
	p_workflow_uid uuid,
	p_agent_id integer,
	p_shipper_id integer,
	p_shipper_address json,
	p_pickup_address json,
	p_year smallint,
	p_groupage_number smallint,
	p_export_type_id smallint,
	p_fullcontainer character,
	p_vessel_id integer,
	p_work_code character varying,
	p_travel_identification_code character varying,
	p_carrier_id integer,
	p_carrier_code character varying,
	p_workflow_id bigint,
	p_pol_id integer,
	p_pol_code character varying,
	p_pol_name character varying,
	p_pod_id integer,
	p_pod_name character varying,
	p_pod_code character varying,
	p_customer_id integer,
	p_notes text,
	p_warehouse_id integer,
	p_work_date timestamp without time zone,
	p_order_state smallint,
	p_airport_id integer,
	p_airport_code character varying,
	p_awb_number character varying,
	p_internal_notes text,
	p_internal_notes2 text,
	p_warehouse_notes text,
	p_route_type character,
	p_internet_visible boolean,
	p_flag_air boolean,
	p_flag_ground boolean,
	p_departure_date timestamp without time zone,
	p_arrival_date timestamp without time zone,
	p_po_state smallint,
	p_po_level smallint,
	p_final_date timestamp without time zone,
	p_flg_house boolean,
	p_flg_master boolean,
	p_delivered boolean,
	p_flg_billable boolean,
	p_customs_declearer character varying,
	p_customs_date timestamp without time zone,
	p_update_date timestamp with time zone,
	p_insert_date timestamp with time zone,
	p_deleted boolean,
	p_db_schema_id integer,
	p_carrier_name character varying,
    p_work_number integer)
    RETURNS bigint
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
BEGIN

if p_creation_date is null then p_creation_date := current_date; end if; 
if p_po_state is null then p_po_state := 0; end if; 
if p_po_level is null then p_po_level := 0; end if; 
--flg_house
if p_flg_house is null then p_flg_house := false; end if; 
--flg_master
if p_flg_master is null then p_flg_master := false; end if; 
if p_flg_billable is null then p_flg_billable := false; end if; 
if p_delivered is null then p_delivered := false; end if; 

  if p_id is null or p_id = 0 then 
     select nextval('logistic.pickup_orders_seq') into p_id; 
  end if; 
  
  if p_jguid is null then
     p_jguid:=  public.uuid_generate_v1mc() ;
  end if;

  if p_deleted is null then
     p_deleted := false;
  end if;

  if p_db_schema_id is null then
     p_db_schema_id:=0;
  end if;


  INSERT INTO logistic.shipments (
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
  )
  VALUES (
    p_id,
    p_jguid,
    p_creation_date,
    p_pickup_date,
    p_delivery_date,
    p_office_id,
    p_workflow_uid,
    p_agent_id,
    p_shipper_id,
    p_shipper_address,
    p_pickup_address,
    p_year,
    p_groupage_number,
    p_export_type_id,
    p_fullcontainer,
    p_vessel_id,
    p_work_code,
    p_travel_identification_code,
    p_carrier_id,
    p_carrier_code,
    p_workflow_id,
    p_pol_id,
    p_pol_code,
    p_pol_name,
    p_pod_id,
    p_pod_name,
    p_pod_code,
    p_customer_id,
    p_notes,
    p_warehouse_id,
    p_work_date,
    p_order_state,
    p_airport_id,
    p_airport_code,
    p_awb_number,
    p_internal_notes,
    p_internal_notes2,
    p_warehouse_notes,
    p_route_type,
    p_internet_visible,
    p_flag_air,
    p_flag_ground,
    p_departure_date,
    p_arrival_date,
    p_po_state,
    p_po_level,
    p_final_date,
    p_flg_house,
    p_flg_master,
    p_delivered,
    p_flg_billable,
    p_customs_declearer,
    p_customs_date,
    p_update_date,
    p_insert_date,
    p_deleted,
    p_db_schema_id,
    p_carrier_name,
	p_work_number
  );
  
  return p_id; 
END;
$BODY$;

ALTER FUNCTION logistic.shipments_insert(bigint, uuid, timestamp with time zone, timestamp without time zone, timestamp without time zone, integer, uuid, integer, integer, json, json, smallint, smallint, smallint, character, integer, character varying, character varying, integer, character varying, bigint, integer, character varying, character varying, integer, character varying, character varying, integer, text, integer, timestamp without time zone, smallint, integer, character varying, character varying, text, text, text, character, boolean, boolean, boolean, timestamp without time zone, timestamp without time zone, smallint, smallint, timestamp without time zone, boolean, boolean, boolean, boolean, character varying, timestamp without time zone, timestamp with time zone, timestamp with time zone, boolean, integer, character varying, integer)
    OWNER TO ergo;
