-- View: documents.rows_view

DROP VIEW documents.rows_view;

CREATE OR REPLACE VIEW documents.rows_view
 AS
 SELECT r.id,
    r.doc_id,
    r.item_id,
    r.row_date,
    r."inout",
    r.model,
    r.code,
    r.description,
    r.price,
    r.vat_id,
    r.vat_rate,
    r.discount_rate,
    r.discount_comm_rate,
    r.discount_ext_rate,
    r.quantity,
    r.secondhand,
    r.dimension_id1,
    r.dimension_id2,
    r.dimensions_id3,
    r.currency_id,
    r.exchange_rate,
    r."position",
    r.delivery_date,
    r.barcode,
    r.delivered_qty,
    r.sample_qty,
    r.is_sample,
    r.ref_code,
    r.doc_origin_id,
    r.row_origin_id,
    r.anagrams_ref_id,
    r.collector_points,
    r.collector_points_forfait,
    r.package_type_id,
    r.jguid,
    r.ordered_qty,
    r.pallets,
    r.weight_on_delivery,
    r.weight_on_order,
    r.weight_on_shipping,
    r.volume,
    r.doc_origin_number,
    r.doc_origin_date,
    r.customs_doc_ref,
    r.customs_doc_type_id,
    r.purchase_order,
    r.insert_date,
    r.update_date,
    r.user_insert,
    r.user_update,
    r.size_weight,
    r.size_length,
    r.size_height,
    r.inventory_qty,
    r.inventory_weight,
    r.customs_doc_cin,
    r.customs_doc_date,
    r.supplier_id,
    r.doc_origin__number,
    r.db_schema_id,
    r.doc_head_jguid,
    r.item_jguid,
    r.container_status,
    r.rights,
    r.invoice_number,
    r.custom_field_1,
    r.custom_field_2,
    r.invoice_amount,
    r.custom_field_3,
    r.json_nested_table,
    r.invoice_date,
    r.importexport,
    r.type_id,
    r.is_description,
    r.exchange_rage,
    r.freight_qty,
    r.amount,
    r.vat_code,
    r.freight_rate,
    r.vat_description,
    r.currency_code,
    r.currency_description,
    r.flg_description,
	r.haz_class,
    s.an_last_name AS supplier_name
   FROM documents.rows r
     LEFT JOIN anagraph.anagraphs s ON s.anagraph_id = r.supplier_id;

ALTER TABLE documents.rows_view
    OWNER TO ergo;


CREATE TRIGGER doc_rows_view_ioi_trg
    INSTEAD OF INSERT
    ON documents.rows_view
    FOR EACH ROW
    EXECUTE PROCEDURE documents.rows_view_insert_trg();


CREATE TRIGGER doc_rows_view_iou_trg
    INSTEAD OF UPDATE 
    ON documents.rows_view
    FOR EACH ROW
    EXECUTE PROCEDURE documents.rows_view_update_trg();

