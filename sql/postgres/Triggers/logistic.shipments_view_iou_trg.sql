-- FUNCTION: logistic.shipments_view_iou_trg()

-- DROP FUNCTION logistic.shipments_view_iou_trg();

CREATE OR REPLACE FUNCTION logistic.shipments_view_iou_trg()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
declare
  v_id bigint;   
begin
  v_id :=  
     workflow.sp_upd_workflows ( 
     new.id,
     new.jguid,
     new.workdate,
     new.code,
     new.office_id,
     new.customer_id,
     new.year,
     new.type_id,
     new.deleted,
     new.db_schema_id,
     new.level_id
     );
     
v_id := 
logistic.shipments_update ( 
  new.id ,
  new.jguid ,
  new.creation_date ,
  new.pickup_date ,
  new.delivery_date ,
  new.office_id ,
  new.workflow_uid ,
  new.agent_id ,
  new.shipper_id ,
  new.shipper_address ,
  new.pickup_address ,
  new.year ,
  new.groupage_number ,
  new.export_type_id ,
  new.fullcontainer ,
  new.vessel_id ,
  new.work_code ,
  new.travel_identification_code ,
  new.carrier_id ,
  new.carrier_code ,
  new.workflow_id ,
  new.pol_id ,
  new.pol_code ,
  new.pol_name ,
  new.pod_id ,
  new.pod_name ,
  new.pod_code ,
  new.customer_id ,
  new.notes ,
  new.warehouse_id ,
  new.work_date ,
  new.order_state ,
  new.airport_id ,
  new.airport_code ,
  new.awb_number ,
  new.internal_notes ,
  new.internal_notes2 ,
  new.warehouse_notes ,
  new.route_type ,
  new.internet_visible ,
  new.flag_air ,
  new.flag_ground ,
  new.departure_date ,
  new.arrival_date ,
  new.po_state ,
  new.po_level ,
  new.final_date ,
  new.flg_house ,
  new.flg_master ,
  new.delivered ,
  new.flg_billable ,
  new.customs_declearer ,
  new.customs_date ,
  new.update_date ,
  new.insert_date ,
  new.deleted ,
  new.db_schema_id ,
  new.carrier_name ,
  new.work_number
);

  
   return new; 
end;
$BODY$;

ALTER FUNCTION logistic.shipments_view_iou_trg()
    OWNER TO ergo;

COMMENT ON FUNCTION logistic.shipments_view_iou_trg()
    IS 'This is the Instead of update trigger for Shipments View that involves both Works and Shipments table';
