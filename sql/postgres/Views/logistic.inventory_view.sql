CREATE OR REPLACE VIEW logistic.inventory_view
 AS
 SELECT r.id,
    r.doc_id,
    r.item_id,
    r.row_date,
    r."inout",
    r.model,
    r.price,
    r.delivered_qty,
    r.supplier_id,
    r.inventory_qty,
    h.warehouse_location_id,
    h.office_id,
    h.anagraph_id AS warehouse_id, 
	h.holder_id, 
	h.location_name,
	h.holder_name 
   FROM documents.rows r
     JOIN documents.heads h ON r.doc_id = h.id
  WHERE h.type_id = 20 AND r.delivered_qty = r.inventory_qty;

ALTER TABLE logistic.inventory_view
    OWNER TO ergo;