-- FUNCTION: documents.heads_view_delete_trg()

-- DROP FUNCTION IF EXISTS documents.heads_view_delete_trg();

CREATE OR REPLACE FUNCTION documents.heads_view_delete_trg()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
begin
  update documents.heads set deleted = true where id = old.id; 
  return old; 
end; 
$BODY$;

ALTER FUNCTION documents.heads_view_delete_trg()
    OWNER TO ergo;


DROP VIEW IF EXISTS documents.heads_view;

CREATE OR REPLACE VIEW documents.heads_view
 AS
 SELECT h.id,
    h.type_id,
    h.in_out,
    h.doc_date,
    h.doc_number,
    h.reason,
    h.dest_address,
    h.dest_postal_code,
    h.dest_town,
    h.dest_state_province,
    h.dest_country_iso,
    h.departure_date,
    h.delivery_methos,
    h.goods_description,
    h.packages_number,
    h.total_weight,
    h.incoterms,
    h.delivery_charges,
    h.discount_rate,
    h.anagraph_id,
    h.carrier_id,
    h.dest_state_province_id,
    h.dest_region_id,
    h.dest_town_id,
    h.currency_id,
    h.payment_terms_id,
    h.payment_terms_des,
    h.package_description,
    h.payment_term_code,
    h.folder_id,
    h.doc_state,
    h.holder_name,
    h.holder_id,
    h.holder_vat_id,
    h.holder_address,
    h.holder_postal_code,
    h.holder_town,
    h.holder_state_province,
    h.holder_country_iso,
    h.delivery_rate_expense,
    h.holder_group_id,
    h.amount,
    h.net_amount,
    h.financial_year,
    h.doc_origin_id,
    h.delivery_vat_id,
    h.delivery_vat_rate,
    h.accounted,
    h.insert_date,
    h.update_date,
    h.delivery_due_date,
    h.sent,
    h.arrival_date,
    h.payment_due_date,
    h.duties,
    h.paid,
    h.doc_fine,
    h.user_insert,
    h.user_update,
    h.doc_year,
    h.po_number_id,
    h.po_number,
    h.printed,
    h.contact_name,
    h.contact_email,
    h.contact_phone,
    h.office_id,
    h.warehouse_location_id,
    h.jguid,
    h.notes1,
    h.notes2,
    h.notes3,
    h.db_schema_id,
    h.purchase_order_number,
    h.custom_field_1,
    h.custom_field_2,
    h.custom_field_3,
    h.custom_int_1,
    h.custom_int_2,
    h.custom_int_3,
    h.doc_ref_code,
    h.carrier_expenses,
    h.registry_code,
    h.carrier_tracking_number,
    h.carrier_expenses_currency_id,
    h.search_index,
    h.dest_name,
    h.carrier_name,
    h.location_name,
    h.goods_type_id,
    h.importexport,
    h.carrier_invoice_number,
    h.carrier_invoice_date,
    h.workflow_id,
    h.vessel_department_id,
    h.payment_term_id,
    h.an_code,
    h.ref_date,
    h.ref_code,
    h.stamp_duty,
    h.exchange_rate,
    h.conversion_date,
    h.work_code,
    h.work_date,
    h.deleted,
    h.dest_vat_number,
    h.holder_vat_number,
    h.currency_code,
    h.currency_description,
    h.taxable_amount,
    h.vat_taxes,
    h.assigned,
    h.inventory,
	h.location_code,
	h.vessel_id,
	h.vessel_name,
	h.vessel_code,
    cc.currency_code AS carrier_currency_code,
    cc.currency_name AS carrier_currency_name,
	s.work_code ||  CASE WHEN s.pol_name is null THEN '' ELSE ' ' || Coalesce(s.pol_name, '')  END || 
	       CASE WHEN s.pod_name is null THEN '' ELSE ' - ' || Coalesce(s.pod_name, '')  END AS shipment_des
   FROM documents.heads h
     LEFT JOIN jpublic.currencies cc ON cc.currency_id = h.carrier_expenses_currency_id
	 LEFT JOIN logistic.shipments s ON h.folder_id = s.workflow_id;

ALTER TABLE IF EXISTS documents.heads_view
    OWNER TO ergo;


CREATE TRIGGER heads_view_iod_trg
    INSTEAD OF DELETE
    ON documents.heads_view
    FOR EACH ROW
    EXECUTE PROCEDURE documents.heads_view_delete_trg();


CREATE TRIGGER heads_view_ioi_trg
    INSTEAD OF INSERT
    ON documents.heads_view
    FOR EACH ROW
    EXECUTE PROCEDURE documents.heads_view_insert_trg();


CREATE TRIGGER heads_view_iou_trg
    INSTEAD OF UPDATE 
    ON documents.heads_view
    FOR EACH ROW
    EXECUTE PROCEDURE documents.heads_view_update_trg();

COMMENT ON TRIGGER heads_view_iou_trg ON documents.heads_view
    IS 'Instead of Update trigger for Documents View';
