-- FUNCTION: documents.rows_view_insert_trg()

-- DROP FUNCTION IF EXISTS documents.rows_view_insert_trg();

CREATE OR REPLACE FUNCTION documents.rows_view_insert_trg()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
begin

     if New.id is null then
          New.id:=nextval('documents.rows_seq');
      end if; 
	  
     if New.discount_ext_rate is null then
          New.discount_ext_rate:=0;
      end if; 	
	  
     if New.discount_rate is null then
          New.discount_rate:=0;
      end if; 
	  
     if New.discount_comm_rate is null then
          New.discount_comm_rate:=0;
      end if; 
	  
     if New.quantity is null then
          New.quantity :=0;
      end if; 
	  

    INSERT INTO documents.rows (
    id,
    doc_id,
    item_id,
    row_date,
    "inout",
    model,
    code,
    description,
    price,
    vat_id,
    vat_rate,
    discount_rate,
    discount_comm_rate,
    discount_ext_rate,
    quantity,
    secondhand,
    dimension_id1,
    dimension_id2,
    dimensions_id3,
    currency_id,
    exchange_rate,
    position,
    delivery_date,
    barcode,
    delivered_qty,
    sample_qty,
    is_sample,
    ref_code,
    doc_origin_id,
    row_origin_id,
    anagrams_ref_id,
    collector_points,
    collector_points_forfait,
    package_type_id,
    jguid,
    ordered_qty,
    pallets,
    weight_on_delivery,
    weight_on_order,
    weight_on_shipping,
    volume,
    doc_origin_number,
    doc_origin_date,
    customs_doc_ref,
    customs_doc_type_id,
    purchase_order,
    insert_date,
    update_date,
    user_insert,
    user_update,
    size_weight,
    size_length,
    size_height,
    inventory_qty,
    inventory_weight,
    customs_doc_cin,
    customs_doc_date,
    supplier_id,
    doc_origin__number,
    db_schema_id,
    doc_head_jguid,
    item_jguid,
    container_status,
    rights,
    invoice_number,
    custom_field_1,
    custom_field_2,
    invoice_amount,
    custom_field_3,
    json_nested_table,
    invoice_date,
    importexport,
    "type_id",
    is_description,
    exchange_rage,
    freight_qty,
    amount,
    vat_code,
    freight_rate,
    vat_description,
    currency_code,
    currency_description,
    flg_description,
	haz_class
  )
  VALUES (
    new.id,
    new.doc_id,
    new.item_id,
    new.row_date,
    new.inout,
    new.model,
    new.code,
    new.description,
    new.price,
    new.vat_id,
    new.vat_rate,
    new.discount_rate,
    new.discount_comm_rate,
    new.discount_ext_rate,
    new.quantity,
    new.secondhand,
    new.dimension_id1,
    new.dimension_id2,
    new.dimensions_id3,
    new.currency_id,
    new.exchange_rate,
    new.position,
    new.delivery_date,
    new.barcode,
    new.delivered_qty,
    new.sample_qty,
    new.is_sample,
    new.ref_code,
    new.doc_origin_id,
    new.row_origin_id,
    new.anagrams_ref_id,
    new.collector_points,
    new.collector_points_forfait,
    new.package_type_id,
    new.jguid,
    new.ordered_qty,
    new.pallets,
    new.weight_on_delivery,
    new.weight_on_order,
    new.weight_on_shipping,
    new.volume,
    new.doc_origin_number,
    new.doc_origin_date,
    new.customs_doc_ref,
    new.customs_doc_type_id,
    new.purchase_order,
    new.insert_date,
    new.update_date,
    new.user_insert,
    new.user_update,
    new.size_weight,
    new.size_length,
    new.size_height,
    new.inventory_qty,
    new.inventory_weight,
    new.customs_doc_cin,
    new.customs_doc_date,
    new.supplier_id,
    new.doc_origin__number,
    new.db_schema_id,
    new.doc_head_jguid,
    new.item_jguid,
    new.container_status,
    new.rights,
    new.invoice_number,
    new.custom_field_1,
    new.custom_field_2,
    new.invoice_amount,
    new.custom_field_3,
    new.json_nested_table,
    new.invoice_date,
    new.importexport,
    new.type_id,
    new.is_description,
    new.exchange_rage,
    new.freight_qty,
    new.amount,
    new.vat_code,
    new.freight_rate,
    new.vat_description,
    new.currency_code,
    new.currency_description,
    new.flg_description,
	new.haz_class
  );

  return new; 
end; 
$BODY$;

ALTER FUNCTION documents.rows_view_insert_trg()
    OWNER TO ergo;
